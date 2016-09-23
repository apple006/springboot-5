package cn.merryyou.conf;

import com.github.pagehelper.PageHelper;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.boot.autoconfigure.MybatisProperties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.condition.ConditionalOnClass;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.DefaultResourceLoader;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.util.Assert;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;
import java.util.Properties;

/**
 * {@link EnableAutoConfiguration Auto-Configuration} for Mybatis. Contributes a
 * {@link SqlSessionFactory} and a {@link SqlSessionTemplate}.
 *
 * If {@link org.mybatis.spring.annotation.MapperScan} is used, or a configuration file is
 * specified as a property, those will be considered, otherwise this auto-configuration
 * will attempt to register mappers based on the interface definitions in or under the
 * root auto-configuration package.
 *
 * @author Eddú Meléndez
 * @author Josh Long
 */
@Configuration
@ConditionalOnClass({ SqlSessionFactory.class, SqlSessionFactoryBean.class })
//@ConditionalOnBean(DataSource.class)
@EnableConfigurationProperties(MybatisProperties.class)
@AutoConfigureAfter(DataSourceAutoConfiguration.class)
public class MybatisAutoConfiguration {

    private static Log log = LogFactory.getLog(MybatisAutoConfiguration.class);

    @Autowired
    private MybatisProperties properties;

    @Autowired(required = false)
    private Interceptor[] interceptors;

    @Autowired
    private ResourceLoader resourceLoader = new DefaultResourceLoader();

    @PostConstruct
    public void checkConfigFileExists() {
        if (this.properties.isCheckConfigLocation()) {
            Resource resource = this.resourceLoader
                    .getResource(this.properties.getConfig());
            Assert.state(resource.exists(),
                    "Cannot find config location: " + resource
                            + " (please add config file or check your Mybatis "
                            + "configuration)");
        }
    }

    @Bean(name = "sqlSessionFactory")
    @ConditionalOnMissingBean
    public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
        SqlSessionFactoryBean bean = new SqlSessionFactoryBean();
        bean.setDataSource(dataSource);
        bean.setTypeAliasesPackage("cn.merryyou.entity");

        //添加XML目录
        ResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();

        log.info("注册MyBatis分页插件PageHelper");
        PageHelper pageHelper = new PageHelper();
        Properties p = new Properties();
        p.setProperty("offsetAsPageNum", "true");
        p.setProperty("rowBoundsWithCount", "true");
        p.setProperty("reasonable", "true");
        pageHelper.setProperties(p);
        Interceptor[] plugins =  new Interceptor[]{pageHelper};
        bean.setPlugins(plugins);

        try {
            bean.setMapperLocations(resolver.getResources("classpath:mybatis/mapper/*.xml"));
            return bean.getObject();
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

//    @Bean
//    @ConditionalOnMissingBean
//    public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) {
//        return new SqlSessionTemplate(sqlSessionFactor);
//    }

//    /**
//     * 分页插件
//     *
//     * @param dataSource
//     * @return
//     * @author SHANHY
//     * @create  2016年2月18日
//     */
//    @Bean
//    public PageHelper pageHelper(DataSource dataSource) {
//        log.info("注册MyBatis分页插件PageHelper");
//        PageHelper pageHelper = new PageHelper();
//        Properties p = new Properties();
//        p.setProperty("offsetAsPageNum", "true");
//        p.setProperty("rowBoundsWithCount", "true");
//        p.setProperty("reasonable", "true");
//        pageHelper.setProperties(p);
//        return pageHelper;
//    }

}