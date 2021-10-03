package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_946:int = 20;
      
      private static const const_608:int = 10;
      
      private static const const_1304:int = 31;
      
      private static const const_1305:int = 32;
      
      private static const const_607:int = 30;
       
      
      private var var_290:Array;
      
      private var var_765:Boolean = false;
      
      public function FurnitureValRandomizerVisualization()
      {
         this.var_290 = new Array();
         super();
         super.setAnimation(const_607);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
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
         if(param1 > 0 && param1 <= const_608)
         {
            if(this.var_765)
            {
               this.var_765 = false;
               this.var_290 = new Array();
               if(direction == 2)
               {
                  this.var_290.push(const_946 + 5 - param1);
                  this.var_290.push(const_608 + 5 - param1);
               }
               else
               {
                  this.var_290.push(const_946 + param1);
                  this.var_290.push(const_608 + param1);
               }
               this.var_290.push(const_607);
               return;
            }
            super.setAnimation(const_607);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(11))
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
