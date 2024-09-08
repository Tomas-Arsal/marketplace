import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/content/constants.dart';
import '../../../../../core/utils/remote/Dio_helper.dart';
import '../../../../../end_points/end_points.dart';
import '../../../data/models/cart_models.dart';
import '../../../data/models/change_cart_model.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  static CartCubit get(context) => BlocProvider.of(context);

  CartModel? cartModel;
  void getCartsData() async {
    emit(ShopLoadingCartState());
   await DioHelper.getData(
      url: CARTS,
      token: token,
    ).then((value) {
      cartModel = CartModel.fromJson(value.data);
      printFullText(cartModel!.data!.total.toString());

      emit(ShopSuccessCartState());
    }).catchError((erorr) {
      print(erorr);
      emit(ShopErorrCartState(erorr.toString()));
    });
  }

  ChangeCartModel? changeCartModel;
  void changeCartData({
    required int productId,
  }) async  {
    cartProducts[productId] = !cartProducts[productId]!;
    emit(ShopChangeCartLoadingState());
   await DioHelper.postData(
      url: CARTS,
      token: token,
      data: {
        'product_id': productId,
      },
    ).then((value) {
      changeCartModel = ChangeCartModel.fromJson(value.data);
      if (!changeCartModel!.status!) {
        cartProducts[productId] = !cartProducts[productId]!;
      } else {
        getCartsData();
      }

      emit(ShopSuccessChangeCartState(changeCartModel));
    }).catchError((erorr) {
      cartProducts[productId] = !cartProducts[productId]!;
      print(erorr);
      emit(ShopErorrCartState(erorr));
    });
  }

}
