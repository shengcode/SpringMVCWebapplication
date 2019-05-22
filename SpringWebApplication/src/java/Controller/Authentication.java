



package Controller;

import POJO.User;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

public class Authentication extends SimpleFormController{
    public Authentication(){
        setCommandClass(User.class);
        setCommandName("user"); // should be the same as we put in login JSP file
    
    }
    @Override
    protected ModelAndView onSubmit(Object command) throws Exception{
        User user=(User) command;
        if(user.getUserName().equals("user") && user.getPassword().equals("Syntel123")){
            return new ModelAndView ("success","user",user);        
        }
        else 
        return new ModelAndView("login","user",null);
     }
}
