import 'package:go_router/go_router.dart';
import 'package:graduation_project/features/auth/views/login_view.dart';
import 'package:graduation_project/features/auth/views/register_view.dart';
import 'package:graduation_project/features/chat/views/chat_view.dart';
import 'package:graduation_project/features/home/view_models/user_model.dart';
import 'package:graduation_project/features/home/views/home_view.dart';
abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kRegisterView = '/registerView';
  static const kLoginView = '/registerView';
  static const kChatView = '/chatView';


  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (_, state) => const LoginView(),
      ),
      GoRoute(
        path: kChatView,
        builder: (_, state) {
          final doctorModel = state.extra as UserModel;
          return ChatView(doctorModel: doctorModel);
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (_, state) => const HomeView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (_, state) => const RegisterView(),
      ),GoRoute(
        path: kLoginView,
        builder: (_, state) => const LoginView(),
      ),
    ],
  );
}
