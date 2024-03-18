import 'package:prect/ui/components/page_inner_title.dart';
import 'package:flutter/material.dart';

class ScanQrCode extends StatelessWidget {
  const ScanQrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const PageInnerTitle(title: 'QRコードをスキャンしよう！'),
        Image.asset('assets/images/static_dpp_qr_code.png'),
        const SizedBox(height: 20),
        IconButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xffEF5B0C)),
            padding: MaterialStateProperty.all(const EdgeInsets.all(16)),
            elevation: MaterialStateProperty.all(8),
          ),
          onPressed: () {
            // ここに設定画面のWiFiのデバイスを登録のところに遷移する処理を書く
          },
          icon: const Icon(
            Icons.camera_alt_outlined,
            size: 76,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
