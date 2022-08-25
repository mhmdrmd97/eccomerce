import 'package:flutter/material.dart';
import 'package:ecommerce/lib.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TotalStack extends StatelessWidget {
  const TotalStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        if (state is CartLoading)
          return Center(child: CircularProgressIndicator());
        if (state is CartLoaded)
          return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(5.0),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total:",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: Colors.white),
                      ),
                      Text(
                        '\$${state.cart.total_string}',
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: Colors.white),
                      ),
                    ]),
              ));
        return Text('something went wrong');
      },
    );
  }
}
