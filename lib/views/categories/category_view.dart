import 'package:spam_request/export_files.dart';
import 'package:spam_request/widgets/custom_appbar.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List<String> categories = [
    "Спам",
    "Мошенничество",
    "Оскорбления",
    "Проблема с профилем",
    "Нарушение интеллектуальных прав",
    "Прочее",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(
        onTap: () {},
        icon: Icons.close,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Что на странице Контантина кажется вам недопустимым?",
                style: GoogleFonts.nunito(
                    color: AppColors.textColor36,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600),
              ),
              ...List.generate(
                categories.length,
                (index) => ListTile(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      RouteNames.commentary,
                      arguments: categories[index],
                    );
                  },
                  title: Text(
                    categories[index],
                    style: GoogleFonts.nunito(
                        color: AppColors.textColor36,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
