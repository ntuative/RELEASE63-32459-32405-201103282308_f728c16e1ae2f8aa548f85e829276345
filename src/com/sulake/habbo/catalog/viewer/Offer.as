package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1612:String = "pricing_model_unknown";
      
      public static const const_538:String = "pricing_model_single";
      
      public static const const_572:String = "pricing_model_multi";
      
      public static const const_564:String = "pricing_model_bundle";
      
      public static const const_1729:String = "price_type_none";
      
      public static const const_678:String = "price_type_credits";
      
      public static const const_1164:String = "price_type_activitypoints";
      
      public static const const_1204:String = "price_type_credits_and_activitypoints";
       
      
      private var var_743:String;
      
      private var var_1139:String;
      
      private var _offerId:int;
      
      private var var_1738:String;
      
      private var var_1140:int;
      
      private var var_1138:int;
      
      private var _activityPointType:int;
      
      private var var_411:ICatalogPage;
      
      private var var_744:IProductContainer;
      
      private var var_2408:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1738 = param1.localizationId;
         this.var_1140 = param1.priceInCredits;
         this.var_1138 = param1.priceInActivityPoints;
         this._activityPointType = param1.activityPointType;
         this.var_411 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_411;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1738;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1140;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1138;
      }
      
      public function get activityPointType() : int
      {
         return this._activityPointType;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_744;
      }
      
      public function get pricingModel() : String
      {
         return this.var_743;
      }
      
      public function get priceType() : String
      {
         return this.var_1139;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2408;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2408 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1738 = "";
         this.var_1140 = 0;
         this.var_1138 = 0;
         this._activityPointType = 0;
         this.var_411 = null;
         if(this.var_744 != null)
         {
            this.var_744.dispose();
            this.var_744 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_743)
         {
            case const_538:
               this.var_744 = new SingleProductContainer(this,param1);
               break;
            case const_572:
               this.var_744 = new MultiProductContainer(this,param1);
               break;
            case const_564:
               this.var_744 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_743);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_743 = const_538;
            }
            else
            {
               this.var_743 = const_572;
            }
         }
         else if(param1.length > 1)
         {
            this.var_743 = const_564;
         }
         else
         {
            this.var_743 = const_1612;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1140 > 0 && this.var_1138 > 0)
         {
            this.var_1139 = const_1204;
         }
         else if(this.var_1140 > 0)
         {
            this.var_1139 = const_678;
         }
         else if(this.var_1138 > 0)
         {
            this.var_1139 = const_1164;
         }
         else
         {
            this.var_1139 = const_1729;
         }
      }
   }
}
