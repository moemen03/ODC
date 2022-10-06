import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqr/view%20model/bloc/TermsConditions/terms_conditions_cubit.dart';
import 'package:simple_html_css/simple_html_css.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text("Terms & Conditions",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black
              )),
          leading: InkResponse(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, color: Colors.black,),
          ),
        ),
        body: BlocProvider(
          create: (context) => TermsConditionsCubit()..getData(),
          child: BlocConsumer<TermsConditionsCubit, TermsConditionsState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              TermsConditionsCubit term = TermsConditionsCubit.get(context);
              return term.dataModel == null ? Center(
                child: CircularProgressIndicator(
                  color: Colors.deepOrange,
                ),
              )
                  :SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: RichText(
                  text: HTML.toTextSpan(context,
                      term.dataModel!.data!.terms.toString()),
                ),
              );
            },
          ),
        )
    );
  }
}
