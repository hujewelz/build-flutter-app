import 'package:clubhouse_ui/config/palette.dart';
import 'package:clubhouse_ui/data.dart';
import 'package:flutter/material.dart';

class UpcomingRooms extends StatelessWidget {
  final List<Room> rooms;

  const UpcomingRooms({
    Key? key,
    required this.rooms,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(32.0, 4.0, 8.0, 4.0),
      decoration: BoxDecoration(
        color: Palette.secondaryBackground,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: rooms
            .map(
              (e) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: e.club.isNotEmpty ? 4.0 : 0.0),
                      child: Text(e.time),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (e.club.isNotEmpty)
                            Flexible(
                              child: Text(
                                '${e.club} 🏠'.toUpperCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .overline!
                                    .copyWith(
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.0,
                                    ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          Flexible(
                            child: Text(
                              e.name,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
