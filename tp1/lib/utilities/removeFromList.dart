import 'package:flutter/material.dart';

Set<int> removeFromList(Set<int> list, int id){
  list.remove(id);
  debugPrint("Remove beer id from list: $list");
  return list;
}