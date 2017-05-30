package br.com.ifam.mvc.configuration;

import java.io.File;
import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class AppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
    
        private int maxUploadSizeInMb = 5 * 1024 * 1024; // 5 MB

        @Override
        protected Class<?>[] getServletConfigClasses() {
            return new Class[]{AppConfig.class};
        }

        @Override
        protected String[] getServletMappings() {
            return new String[]{"/"};
        }

        @Override
        protected Class<?>[] getRootConfigClasses() {
            return null;
        }

        @Override
        protected void customizeRegistration(ServletRegistration.Dynamic registration) {

            // upload temp file will put here
            File uploadDirectory = new File(System.getProperty("java.io.tmpdir"));

            // register a MultipartConfigElement
            MultipartConfigElement multipartConfigElement =
                    new MultipartConfigElement(uploadDirectory.getAbsolutePath(),
                            maxUploadSizeInMb, maxUploadSizeInMb * 2, maxUploadSizeInMb / 2);

            registration.setMultipartConfig(multipartConfigElement);

        }
        
}
