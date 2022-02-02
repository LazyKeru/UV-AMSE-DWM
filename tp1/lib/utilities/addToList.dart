
import 'package:flutter/material.dart';

Set<int> addToList(Set<int> list, int id){
  list.add(id);
  debugPrint("Beer id: $list");
  return list;
}