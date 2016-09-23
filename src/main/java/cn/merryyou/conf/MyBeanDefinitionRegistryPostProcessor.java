package cn.merryyou.conf;

import cn.merryyou.conf.springbean.impl.ShanhyAImpl;
import cn.merryyou.conf.springbean.impl.ShanhyBImpl;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.annotation.AnnotatedBeanDefinition;
import org.springframework.beans.factory.annotation.AnnotatedGenericBeanDefinition;
import org.springframework.beans.factory.config.BeanDefinitionHolder;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.support.BeanDefinitionReaderUtils;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.beans.factory.support.BeanDefinitionRegistryPostProcessor;
import org.springframework.beans.factory.support.BeanNameGenerator;
import org.springframework.context.annotation.AnnotationBeanNameGenerator;
import org.springframework.context.annotation.Configuration;

/**
 * Created on 2016/9/23 0023.
 *
 * @author zlf
 * @since 1.0
 */
@Configuration
public class MyBeanDefinitionRegistryPostProcessor implements BeanDefinitionRegistryPostProcessor {
    //bean的名称生成器
    private BeanNameGenerator beanNameGenerator = new AnnotationBeanNameGenerator();

    /**
     *  先执行：postProcessBeanDefinitionRegistry()方法，
     *  在执行：postProcessBeanFactory()方法。
     * @param registry
     * @throws BeansException
     */
    @Override
    public void postProcessBeanDefinitionRegistry(BeanDefinitionRegistry registry) throws BeansException {
        System.out.println("MyBeanDefinitionRegistryPostProcessor.postProcessBeanDefinitionRegistry()................");
        registerBean(registry,"shanyA", ShanhyAImpl.class);
        registerBean(registry,"shanyB", ShanhyBImpl.class);
    }

    @Override
    public void postProcessBeanFactory(ConfigurableListableBeanFactory beanFactory) throws BeansException {
        System.out.println("MyBeanDefinitionRegistryPostProcessor.postProcessBeanFactory()................");
    }

    private void registerBean(BeanDefinitionRegistry registry ,String name ,Class<?> beanClass){
        AnnotatedBeanDefinition annotatedBeanDefinition = new AnnotatedGenericBeanDefinition(beanClass);
        //可以自动生成name
        String beanName = (name !=null ? name :this.beanNameGenerator.generateBeanName(annotatedBeanDefinition,registry));
        //bean注册的holer类
        BeanDefinitionHolder beanDefinitionHolder = new BeanDefinitionHolder(annotatedBeanDefinition,beanName);
        //使用bean注册工具类进行注册
        BeanDefinitionReaderUtils.registerBeanDefinition(beanDefinitionHolder,registry);
    }
}
