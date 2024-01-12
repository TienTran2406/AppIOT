import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DeviceFrame extends StatefulWidget {
  DeviceFrame({required this.nameDevice, required this.loaiThietBi ,required this.trangThai, super.key});
  String nameDevice;
  String loaiThietBi;
  bool trangThai;
  @override
  State<DeviceFrame> createState() => _DeviceFrameState();
}

class _DeviceFrameState extends State<DeviceFrame> {
  @override
  Widget build(BuildContext context) {
    String status = "Tắt";
    Icon ic = const Icon(Icons.error);
    if (widget.trangThai == false) {
      status = "Tắt";
    } else {
      status = "Bật";
    }
    if(widget.loaiThietBi == 'tuoi_nuoc'){
      ic = const Icon(Icons.waterfall_chart_rounded);
    }
    if(widget.loaiThietBi == 'den_suoi'){
      if(widget.trangThai == true){
        ic = const Icon(Icons.whatshot_rounded);
      }else{
        ic = const Icon(Icons.whatshot_outlined);
      }
    }
    if(widget.loaiThietBi == 'den'){
      if(widget.trangThai == true){
        ic = const Icon(Icons.light_mode_rounded);
      }else{
        ic = const Icon(Icons.light_mode_outlined);
      }
    }
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      height: 100,
      child: Card(
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ic,
                      Text("${widget.nameDevice}",
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Switch(
                        value: widget.trangThai,
                        onChanged: (value) {
                          setState(() {
                            widget.trangThai = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'Trạng thái: ${status}',
                    textAlign: TextAlign.center,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
