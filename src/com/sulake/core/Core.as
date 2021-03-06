package com.sulake.core
{
   import com.sulake.core.runtime.CoreComponentContext;
   import com.sulake.core.runtime.ICore;
   import flash.display.DisplayObjectContainer;
   
   public final class Core
   {
      
      public static const const_1070:uint = 0;
      
      public static const const_820:uint = 1;
      
      public static const const_659:uint = 2;
      
      public static const const_475:uint = 4;
      
      public static const const_437:uint = 15;
      
      public static const CORE_SETUP_DEBUG:uint = 15;
      
      public static const const_307:int = 1;
      
      public static const const_1620:int = 2;
      
      public static const const_1503:int = 3;
      
      public static const const_880:int = 4;
      
      public static const const_1748:int = 5;
      
      public static const const_1668:int = 6;
      
      public static const const_1827:int = 7;
      
      public static const const_9:int = 9;
      
      public static const const_1124:int = 10;
      
      public static const const_21:int = 11;
      
      public static const const_1669:int = 20;
      
      public static const const_1927:int = 21;
      
      public static const const_282:int = 30;
      
      public static const const_1094:int = 99;
      
      private static var _instance:ICore;
       
      
      public function Core()
      {
         super();
      }
      
      public static function get version() : String
      {
         return "0.0.3";
      }
      
      public static function get instance() : ICore
      {
         return _instance;
      }
      
      public static function instantiate(param1:DisplayObjectContainer, param2:uint) : ICore
      {
         if(_instance == null)
         {
            _instance = new CoreComponentContext(param1,param2);
         }
         return _instance;
      }
      
      public static function error(param1:String, param2:Boolean, param3:int = -1, param4:Error = null) : void
      {
         if(_instance)
         {
            _instance.error(param1,param2,param3,param4);
         }
      }
      
      public static function warning(param1:String) : void
      {
         if(_instance)
         {
            _instance.warning(param1);
         }
      }
      
      public static function debug(param1:String) : void
      {
         if(_instance)
         {
            _instance.debug(param1);
         }
      }
      
      public static function crash(param1:String, param2:int, param3:Error = null) : void
      {
         if(_instance)
         {
            _instance.error(param1,true,param2,param3);
         }
      }
      
      public static function dispose() : void
      {
         if(_instance != null)
         {
            _instance.dispose();
            _instance = null;
         }
      }
   }
}
