package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_208;
         param1["bound_to_parent_rect"] = const_97;
         param1["child_window"] = const_1046;
         param1["embedded_controller"] = const_1167;
         param1["resize_to_accommodate_children"] = const_68;
         param1["input_event_processor"] = const_29;
         param1["internal_event_handling"] = const_828;
         param1["mouse_dragging_target"] = const_241;
         param1["mouse_dragging_trigger"] = const_380;
         param1["mouse_scaling_target"] = const_284;
         param1["mouse_scaling_trigger"] = const_577;
         param1["horizontal_mouse_scaling_trigger"] = const_273;
         param1["vertical_mouse_scaling_trigger"] = const_243;
         param1["observe_parent_input_events"] = const_1148;
         param1["optimize_region_to_layout_size"] = const_498;
         param1["parent_window"] = const_1076;
         param1["relative_horizontal_scale_center"] = const_210;
         param1["relative_horizontal_scale_fixed"] = const_159;
         param1["relative_horizontal_scale_move"] = const_408;
         param1["relative_horizontal_scale_strech"] = const_379;
         param1["relative_scale_center"] = const_1187;
         param1["relative_scale_fixed"] = const_756;
         param1["relative_scale_move"] = const_1095;
         param1["relative_scale_strech"] = const_1218;
         param1["relative_vertical_scale_center"] = const_205;
         param1["relative_vertical_scale_fixed"] = const_133;
         param1["relative_vertical_scale_move"] = const_266;
         param1["relative_vertical_scale_strech"] = const_287;
         param1["on_resize_align_left"] = const_758;
         param1["on_resize_align_right"] = const_568;
         param1["on_resize_align_center"] = const_552;
         param1["on_resize_align_top"] = const_647;
         param1["on_resize_align_bottom"] = const_591;
         param1["on_resize_align_middle"] = const_543;
         param1["on_accommodate_align_left"] = const_1088;
         param1["on_accommodate_align_right"] = const_541;
         param1["on_accommodate_align_center"] = const_776;
         param1["on_accommodate_align_top"] = const_1266;
         param1["on_accommodate_align_bottom"] = const_440;
         param1["on_accommodate_align_middle"] = const_922;
         param1["route_input_events_to_parent"] = const_483;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1157;
         param1["scalable_with_mouse"] = const_1067;
         param1["reflect_horizontal_resize_to_parent"] = const_560;
         param1["reflect_vertical_resize_to_parent"] = const_581;
         param1["reflect_resize_to_parent"] = const_304;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1082;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
