import 'package:flutter/material.dart';
import 'package:notes_app/backend/dataStruture/notes.dart';
import 'package:notes_app/widgets/cards.dart';

class ResposiveNotesView extends StatelessWidget {
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final List<Notes> listData;
  const ResposiveNotesView({
    Key? key,
    this.mainAxisSpacing = 5,
    this.crossAxisSpacing = 5,
    required this.listData,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size screeSize = MediaQuery.of(context).size;
    // Mobile View
    if (screeSize.width <= 450)
      return TwoRow(
          listData: listData,
          crossAxisSpacing: crossAxisSpacing,
          mainAxisSpacing: mainAxisSpacing);
    // Tablet View
    else if (screeSize.width > 450 && screeSize.width <= 650)
      return ThreeRow(
          listData: listData,
          crossAxisSpacing: crossAxisSpacing,
          mainAxisSpacing: mainAxisSpacing);
// Large Screen View -- Desktop
    return FourRow(
        listData: listData,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing);
  }
}

class TwoRow extends StatelessWidget {
  final List<Notes> listData;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  const TwoRow({
    Key? key,
    required this.listData,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screeSize = MediaQuery.of(context).size;
    return Container(
      height: double.maxFinite,
      child: Stack(
        children: [
          Container(
            alignment: Alignment.topLeft,
            width: screeSize.width * 0.5 - 13,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemExtent: mainAxisSpacing,
                shrinkWrap: true,
                itemCount: listData.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index % 2 != 0)
                    return CardView(
                        title: listData[index].title,
                        description: listData[index].notes,
                        date: listData[index].date,
                        category: listData[index].category);

                  return SizedBox();
                }),
          ),
          Container(
            alignment: Alignment.topRight,
            height: double.maxFinite,
            width: screeSize.width * 0.5 - 13,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemExtent: mainAxisSpacing,
                shrinkWrap: true,
                itemCount: listData.length,
                itemBuilder: (BuildContext context, int index) {
                  if (index % 2 == 0)
                    return CardView(
                        title: listData[index].title,
                        description: listData[index].notes,
                        date: listData[index].date,
                        category: listData[index].category);

                  return SizedBox();
                }),
          )
        ],
      ),
    );
  }
}

class ThreeRow extends StatelessWidget {
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final List<Notes> listData;
  const ThreeRow({
    Key? key,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
    required this.listData,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemExtent: mainAxisSpacing,
              shrinkWrap: true,
              itemCount: listData.length,
              itemBuilder: (BuildContext context, int index) {
                if (index % 2 != 0 && index % 3 != 0)
                  return CardView(
                      title: listData[index].title,
                      description: listData[index].notes,
                      date: listData[index].date,
                      category: listData[index].category);

                return SizedBox();
              }),
          SizedBox(width: crossAxisSpacing),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemExtent: mainAxisSpacing,
              shrinkWrap: true,
              itemCount: listData.length,
              itemBuilder: (BuildContext context, int index) {
                if (index % 2 == 0)
                  return CardView(
                      title: listData[index].title,
                      description: listData[index].notes,
                      date: listData[index].date,
                      category: listData[index].category);

                return SizedBox();
              }),
          SizedBox(width: crossAxisSpacing),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemExtent: mainAxisSpacing,
              shrinkWrap: true,
              itemCount: listData.length,
              itemBuilder: (BuildContext context, int index) {
                if (index % 3 == 0)
                  return CardView(
                      title: listData[index].title,
                      description: listData[index].notes,
                      date: listData[index].date,
                      category: listData[index].category);

                return SizedBox();
              }),
        ],
      ),
    );
  }
}

class FourRow extends StatelessWidget {
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final List<Notes> listData;
  const FourRow({
    Key? key,
    required this.mainAxisSpacing,
    required this.crossAxisSpacing,
    required this.listData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemExtent: mainAxisSpacing,
              shrinkWrap: true,
              itemCount: listData.length,
              itemBuilder: (BuildContext context, int index) {
                if (index % 2 != 0 && index % 3 != 0)
                  return CardView(
                      title: listData[index].title,
                      description: listData[index].notes,
                      date: listData[index].date,
                      category: listData[index].category);

                return SizedBox();
              }),
          SizedBox(width: crossAxisSpacing),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemExtent: mainAxisSpacing,
              shrinkWrap: true,
              itemCount: listData.length,
              itemBuilder: (BuildContext context, int index) {
                if (index % 2 == 0)
                  return CardView(
                      title: listData[index].title,
                      description: listData[index].notes,
                      date: listData[index].date,
                      category: listData[index].category);

                return SizedBox();
              }),
          SizedBox(width: crossAxisSpacing),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemExtent: mainAxisSpacing,
              shrinkWrap: true,
              itemCount: listData.length,
              itemBuilder: (BuildContext context, int index) {
                if (index % 3 == 0)
                  return CardView(
                      title: listData[index].title,
                      description: listData[index].notes,
                      date: listData[index].date,
                      category: listData[index].category);

                return SizedBox();
              }),
          SizedBox(width: crossAxisSpacing),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemExtent: mainAxisSpacing,
              shrinkWrap: true,
              itemCount: listData.length,
              itemBuilder: (BuildContext context, int index) {
                if (index % 4 == 0)
                  return CardView(
                      title: listData[index].title,
                      description: listData[index].notes,
                      date: listData[index].date,
                      category: listData[index].category);

                return SizedBox();
              }),
        ],
      ),
    );
  }
}
