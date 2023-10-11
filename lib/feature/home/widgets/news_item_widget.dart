import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:guardian_flutter/feature/home/wrapper/home_item_wrapper.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsItemWidget extends StatelessWidget {
  final HomeItemWrapper wrapper;

  const NewsItemWidget({Key? key, required this.wrapper}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: _onTap,
      child: Container(
        padding: const EdgeInsetsDirectional.only(
          start: 14,
          end: 14,
          bottom: 7,
          top: 7,
        ),
        height: MediaQuery.of(context).size.width / 2.2,
        child: Row(
          children: <Widget>[
            _buildImage(context),
            _buildTitleAndDescription(),
          ],
        ),
      ),
    );
  }

  Future<void> _onTap()  async {
    final Uri url = Uri.parse(wrapper.webUrl);
    if(!await launchUrl(url)) {
      throw Exception('Could not launch $wrapper.webUrl');
    }
  }

  Widget _buildImage(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: wrapper.imageUrl,
      imageBuilder:
          (BuildContext context, ImageProvider<Object> imageProvider) =>
              Padding(
        padding: const EdgeInsetsDirectional.only(
          end: 14,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 3,
            height: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.08),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
      progressIndicatorBuilder: (
        BuildContext context,
        String url,
        DownloadProgress downloadProgress,
      ) =>
          CircularProgressIndicator(value: downloadProgress.progress),
      errorWidget: (
        BuildContext context,
        String url,
        Object error,
      ) =>
          const Icon(
        Icons.error,
        color: Colors.red,
      ),
    );
  }

  Widget _buildTitleAndDescription() {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Title
          Text(
            wrapper.title,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontFamily: 'Butler',
              fontWeight: FontWeight.w900,
              fontSize: 18,
              color: Colors.black87,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(wrapper.description, maxLines: 2),
            ),
          )
        ],
      ),
    ));
  }
}
