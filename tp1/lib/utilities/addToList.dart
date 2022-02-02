
import 'package:flutter/material.dart';

Set<int> addToList(Set<int> list, int id){
  list.add(id);
  debugPrint("Add beer id to list: $list");
  return list;
}