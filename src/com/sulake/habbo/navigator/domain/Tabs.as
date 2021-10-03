package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_391:int = 1;
      
      public static const const_274:int = 2;
      
      public static const const_283:int = 3;
      
      public static const const_383:int = 4;
      
      public static const const_225:int = 5;
      
      public static const const_360:int = 1;
      
      public static const const_837:int = 2;
      
      public static const const_893:int = 3;
      
      public static const const_786:int = 4;
      
      public static const const_242:int = 5;
      
      public static const const_708:int = 6;
      
      public static const const_887:int = 7;
      
      public static const const_221:int = 8;
      
      public static const const_366:int = 9;
      
      public static const const_1987:int = 10;
      
      public static const const_742:int = 11;
      
      public static const const_438:int = 12;
       
      
      private var var_434:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_434 = new Array();
         this.var_434.push(new Tab(this._navigator,const_391,const_438,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_479));
         this.var_434.push(new Tab(this._navigator,const_274,const_360,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_479));
         this.var_434.push(new Tab(this._navigator,const_383,const_742,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1225));
         this.var_434.push(new Tab(this._navigator,const_283,const_242,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_479));
         this.var_434.push(new Tab(this._navigator,const_225,const_221,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_815));
         this.setSelectedTab(const_391);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_383;
      }
      
      public function get tabs() : Array
      {
         return this.var_434;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_434)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_434)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_434)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
