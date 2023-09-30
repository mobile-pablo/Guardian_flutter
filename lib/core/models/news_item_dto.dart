import 'package:equatable/equatable.dart';

class NewsItemDTO extends Equatable {

  final String id;
  final String type;
  final String sectionId;
  final String sectionName;
  final String webPublicationDate;
  final String webTitle;
  final String webUrl;
  final String apiUrl;
  final bool isHosted;
  final String pillarId;
  final String pillarName;

 const NewsItemDTO(
       this.id,
       this.type,
       this.sectionId,
       this.sectionName,
       this.webPublicationDate,
       this.webTitle,
       this.webUrl,
       this.apiUrl,
       this.isHosted,
       this.pillarId,
       this.pillarName
  );

  @override
  List<Object> get props => <Object>[
        id,
        type,
        sectionId,
        sectionName,
        webPublicationDate,
        webTitle,
        webUrl,
        apiUrl,
        isHosted,
        pillarId,
        pillarName
      ];

}
