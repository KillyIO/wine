import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/typewriter/typewriter_series/typewriter_series_bloc.dart';
import 'package:wine/presentation/core/labels/text_field_label.dart';
import 'package:wine/presentation/typewriter/widgets/typewriter_cover.dart';
import 'package:wine/presentation/typewriter/widgets/typewriter_text_field.dart';
import 'package:wine/presentation/typewriter/widgets/typewriter_top_title.dart';
import 'package:wine/utils/constants/core.dart';

/// @nodoc
class TypewriterSeriesLayout extends StatelessWidget {
  /// @nodoc
  const TypewriterSeriesLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TypewriterSeriesBloc, TypewriterSeriesState>(
      builder: (context, state) {
        return SafeArea(
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: maxContentLayoutWidth,
            ),
            child: AbsorbPointer(
              absorbing: state.isProcessing,
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: ListView(
                  children: <Widget>[
                    const TypewriterTopTitle(title: 'SERIES DETAILS'),
                    const TextFieldLabel(title: 'COVER'),
                    TypewriterCover(
                      coverURL: state.coverURL,
                      onPressed: () => context
                          .read<TypewriterSeriesBloc>()
                          .add(const TypewriterSeriesEvent.addCoverPressed()),
                    ),
                    TypewriterTextField(
                      controller: state.titleController,
                      label: 'TITLE*',
                      hintText: 'Less than $titleMaxWords words',
                      onChanged: (value) => context
                          .read<TypewriterSeriesBloc>()
                          .add(TypewriterSeriesEvent.titleChanged(value)),
                      validator: (_) => context
                          .watch<TypewriterSeriesBloc>()
                          .state
                          .title
                          .value
                          .match(
                            (_) => null,
                            (err) => err.maybeMap(
                              emptyInput: (_) => 'The title must not be empty.',
                              tooLongInput: (_) =>
                                  'The title must be lass than $titleMaxWords words long.',
                              orElse: () => null,
                            ),
                          ),
                      wordCount: '${state.titleWordCount}/$titleMaxWords',
                      wordCountError: state.titleWordCount == 0 ||
                          state.titleWordCount > titleMaxWords,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
