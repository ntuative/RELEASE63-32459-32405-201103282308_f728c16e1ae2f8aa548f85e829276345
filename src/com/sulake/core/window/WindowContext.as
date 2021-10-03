package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_583:uint = 0;
      
      public static const const_1593:uint = 1;
      
      public static const const_1991:int = 0;
      
      public static const const_1925:int = 1;
      
      public static const const_1813:int = 2;
      
      public static const const_1883:int = 3;
      
      public static const const_1694:int = 4;
      
      public static const const_393:int = 5;
      
      public static var var_395:IEventQueue;
      
      private static var var_588:IEventProcessor;
      
      private static var var_1673:uint = const_583;
      
      private static var stage:Stage;
      
      private static var var_157:IWindowRenderer;
       
      
      private var var_2272:EventProcessorState;
      
      private var var_2273:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_212:DisplayObjectContainer;
      
      protected var var_2909:Boolean = true;
      
      protected var var_1300:Error;
      
      protected var var_2075:int = -1;
      
      protected var var_1299:IInternalWindowServices;
      
      protected var var_1563:IWindowParser;
      
      protected var var_2846:IWindowFactory;
      
      protected var var_146:IDesktopWindow;
      
      protected var var_1562:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_554:Boolean = false;
      
      private var var_2274:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_157 = param2;
         this._localization = param4;
         this.var_212 = param5;
         this.var_1299 = new ServiceManager(this,param5);
         this.var_2846 = param3;
         this.var_1563 = new WindowParser(this);
         this.var_2273 = param7;
         if(!stage)
         {
            if(this.var_212 is Stage)
            {
               stage = this.var_212 as Stage;
            }
            else if(this.var_212.stage)
            {
               stage = this.var_212.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_146 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_212.addChild(this.var_146.getDisplayObject());
         this.var_212.doubleClickEnabled = true;
         this.var_212.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this.var_2272 = new EventProcessorState(var_157,this.var_146,this.var_146,null,this.var_2273);
         inputMode = const_583;
         this.var_1562 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1673;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_395)
         {
            if(var_395 is IDisposable)
            {
               IDisposable(var_395).dispose();
            }
         }
         if(var_588)
         {
            if(var_588 is IDisposable)
            {
               IDisposable(var_588).dispose();
            }
         }
         switch(value)
         {
            case const_583:
               var_395 = new MouseEventQueue(stage);
               var_588 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1593:
               var_395 = new TabletEventQueue(stage);
               var_588 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_583;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_212.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_212.removeChild(IGraphicContextHost(this.var_146).getGraphicContext(true) as DisplayObject);
            this.var_146.destroy();
            this.var_146 = null;
            this.var_1562.destroy();
            this.var_1562 = null;
            if(this.var_1299 is IDisposable)
            {
               IDisposable(this.var_1299).dispose();
            }
            this.var_1299 = null;
            this.var_1563.dispose();
            this.var_1563 = null;
            var_157 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1300;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2075;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1300 = param2;
         this.var_2075 = param1;
         if(this.var_2909)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1300 = null;
         this.var_2075 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1299;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1563;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2846;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_146;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_146.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1694,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1562;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_146,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_146)
         {
            this.var_146 = null;
         }
         if(param1.state != WindowState.const_551)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_157.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_554 = true;
         if(this.var_1300)
         {
            throw this.var_1300;
         }
         var_588.process(this.var_2272,var_395);
         this.var_554 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2274 = true;
         var_157.update(param1);
         this.var_2274 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_146 != null && !this.var_146.disposed)
         {
            if(this.var_212 is Stage)
            {
               this.var_146.width = Stage(this.var_212).stageWidth;
               this.var_146.height = Stage(this.var_212).stageHeight;
            }
            else
            {
               this.var_146.width = this.var_212.width;
               this.var_146.height = this.var_212.height;
            }
         }
      }
   }
}
