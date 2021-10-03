package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1312:IHabboTracking;
      
      private var var_1991:Boolean = false;
      
      private var var_2619:int = 0;
      
      private var var_1857:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1312 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1312 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1991 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2619 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1991)
         {
            return;
         }
         ++this.var_1857;
         if(this.var_1857 <= this.var_2619)
         {
            this.var_1312.track("toolbar",param1);
         }
      }
   }
}
