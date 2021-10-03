package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2574:String;
      
      private var var_2575:Class;
      
      private var var_2576:Class;
      
      private var var_1829:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2574 = param1;
         this.var_2575 = param2;
         this.var_2576 = param3;
         if(rest == null)
         {
            this.var_1829 = new Array();
         }
         else
         {
            this.var_1829 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2574;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2575;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2576;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1829;
      }
   }
}
