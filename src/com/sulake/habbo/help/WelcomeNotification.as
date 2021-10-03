package com.sulake.habbo.help
{
   public class WelcomeNotification
   {
       
      
      private var var_2501:String;
      
      private var var_2499:String;
      
      private var var_2500:String;
      
      public function WelcomeNotification(param1:String, param2:String, param3:String)
      {
         super();
         this.var_2501 = param1;
         this.var_2499 = param2;
         this.var_2500 = param3;
      }
      
      public function get targetIconId() : String
      {
         return this.var_2501;
      }
      
      public function get titleLocalizationKey() : String
      {
         return this.var_2499;
      }
      
      public function get descriptionLocalizationKey() : String
      {
         return this.var_2500;
      }
   }
}
