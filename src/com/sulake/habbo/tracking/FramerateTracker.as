package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1757:int;
      
      private var var_2560:int;
      
      private var var_837:int;
      
      private var var_501:Number;
      
      private var var_2562:Boolean;
      
      private var var_2561:int;
      
      private var var_1822:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2560 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2561 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2562 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_837;
         if(this.var_837 == 1)
         {
            this.var_501 = param1;
            this.var_1757 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_837);
            this.var_501 = this.var_501 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2562 && param3 - this.var_1757 >= this.var_2560 && this.var_1822 < this.var_2561)
         {
            _loc5_ = 1000 / this.var_501;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1822;
            this.var_1757 = param3;
            this.var_837 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
