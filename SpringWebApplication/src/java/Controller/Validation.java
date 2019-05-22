
package Controller;
import POJO.RegisterUser;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
public class Validation extends SimpleFormController{
    
    public Validation(){
        setCommandClass(RegisterUser.class);
        setCommandName("registerUser"); // should be the same as we put in login JSP file
    
    }
    @Override
    protected ModelAndView onSubmit(Object command) throws Exception{
        RegisterUser user=(RegisterUser) command;
        return new ModelAndView ("validation","registerUser",user);        
        
        //else 
        //return new ModelAndView("login","user",null);
     }
}
