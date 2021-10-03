package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2916:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_146 = param1.desktop;
         var_74 = param1.var_1290 as WindowController;
         var_175 = param1.var_1291 as WindowController;
         var_157 = param1.renderer;
         var_852 = param1.var_1292;
         param2.begin();
         param2.end();
         param1.desktop = var_146;
         param1.var_1290 = var_74;
         param1.var_1291 = var_175;
         param1.renderer = var_157;
         param1.var_1292 = var_852;
      }
   }
}
