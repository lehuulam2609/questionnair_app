@JS()
library script.js;

import 'package:js/js.dart';

/*
For booking online by url
This function will do Promise to return something,
Take URL as parameter, trigger native
*/
@JS()
external dynamic jsAddScheduleToCalendarFunction(dynamic data);

@JS()
external dynamic jsAddReadyToDeleteFunction(dynamic data);

@JS()
external dynamic getPlatform();

///         ^            ^                ^
///      return     functionName       arguments
