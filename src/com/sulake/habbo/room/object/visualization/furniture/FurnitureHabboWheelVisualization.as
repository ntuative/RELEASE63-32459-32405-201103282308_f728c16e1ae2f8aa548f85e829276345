package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_946:int = 10;
      
      private static const const_608:int = 20;
      
      private static const const_1304:int = 31;
      
      private static const const_1305:int = 32;
       
      
      private var var_290:Array;
      
      private var var_765:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_290 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_765)
            {
               this.var_765 = true;
               this.var_290 = new Array();
               this.var_290.push(const_1304);
               this.var_290.push(const_1305);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_946)
         {
            if(this.var_765)
            {
               this.var_765 = false;
               this.var_290 = new Array();
               this.var_290.push(const_946 + param1);
               this.var_290.push(const_608 + param1);
               this.var_290.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(this.var_290.length > 0)
            {
               super.setAnimation(this.var_290.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
