# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  $Stavy = Array['Doporučení', 'Zajemce o hubnuti','Zajemce o praci','Zájemce po poradně', 'Zájemce s analýzou','Opakovaný účastník poradny',
   'Nový klient' ,'Opakovaný klient', 'Klient s dohodou', 'Zaregistrovaný klient', 'Dlouhodobý klient', 'Nemá zájem'] 
   $StavyHash = { 	'Doporučení' => 'Doporučení', 'Zajemce o hubnuti' =>  'Zajemce o hubnuti',
  	'Zajemce o praci' =>'Zajemce o praci','Zájemce po poradně' =>'Zájemce po poradně', 
  	'Zájemce s analýzou' =>'Zájemce s analýzou',	'Opakovaný účastník poradny' =>'Opakovaný účastník poradny',
  	'Nový klient'  => 'Nový klient',	'Opakovaný klient' =>'Opakovaný klient',
  	'Klient s dohodou' =>'Klient s dohodou', 'Zaregistrovaný klient' => 'Zaregistrovaný klient',
  	'Dlouhodobý klient' =>'Dlouhodobý klient','Nemá zájem' =>'Nemá zájem' 
  }
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
   filter_parameter_logging :password, :password_confirmation
    helper_method :current_user_session, :current_user, :current_admin

    private
      def current_user_session
        return @current_user_session if defined?(@current_user_session)
        @current_user_session = UserSession.find
      end

      def current_user
        return @current_user if defined?(@current_user)
        @current_user = current_user_session && current_user_session.user
      end
     
      def current_admin
      	      return @current_admin if defined?(@current_admin)
      	      @current_admin = current_user.admin

      end         
      
      
      def require_user
      unless current_user
	store_location
	flash[:notice] = "You must be logged in to access this page"
	redirect_to login_url
	return false
      end
    	end
    
    	
      def require_admin
      	      unless current_admin
	store_location
	flash[:notice] = "You must be logged in as admin to access this page"
	redirect_to login_url
	return false
      end
    	end	
    	

    def require_no_user
      if current_user
        store_location
        flash[:notice] = "You must be logged out to access this page"
        redirect_to hovno_url
        #redirect_to account_url
        return false
      end
    end
    
    def store_location
      session[:return_to] = request.request_uri
    end
    
    def redirect_back_or_default(default)
      redirect_to(session[:return_to] || default)
      session[:return_to] = nil
    end
end
