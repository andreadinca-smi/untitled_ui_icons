import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:untitled_ui_icons/untitled_ui_icons.dart';

void main() {
  group('UntitledIcons constants', () {
    test('icon name constants are non-empty strings', () {
      expect(UntitledIcons.activity, isNotEmpty);
      expect(UntitledIcons.activityHeart, isNotEmpty);
      expect(UntitledIcons.alarmClock, isNotEmpty);
    });

    test('icon name constants match expected values', () {
      expect(UntitledIcons.activity, equals('activity'));
      expect(UntitledIcons.activityHeart, equals('activity-heart'));
      expect(UntitledIcons.alarmClock, equals('alarm-clock'));
    });
  });

  group('UntitledIcon widget', () {
    testWidgets('builds without errors', (tester) async {
      await tester.pumpWidget(
        const Directionality(
          textDirection: TextDirection.ltr,
          child: UntitledIcon(UntitledIcons.activity),
        ),
      );
      expect(find.byType(UntitledIcon), findsOneWidget);
    });

    testWidgets('respects size parameter', (tester) async {
      const double testSize = 48.0;
      await tester.pumpWidget(
        const Directionality(
          textDirection: TextDirection.ltr,
          child: UntitledIcon(UntitledIcons.activity, size: testSize),
        ),
      );
      final icon = tester.widget<UntitledIcon>(find.byType(UntitledIcon));
      expect(icon.size, equals(testSize));
    });

    testWidgets('accepts optional color parameter', (tester) async {
      await tester.pumpWidget(
        const Directionality(
          textDirection: TextDirection.ltr,
          child: UntitledIcon(
            UntitledIcons.activity,
            color: Color(0xFF0000FF),
          ),
        ),
      );
      final icon = tester.widget<UntitledIcon>(find.byType(UntitledIcon));
      expect(icon.color, equals(const Color(0xFF0000FF)));
    });
  });
}
