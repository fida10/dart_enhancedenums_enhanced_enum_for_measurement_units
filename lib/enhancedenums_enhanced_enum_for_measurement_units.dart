/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/enhancedenums_enhanced_enum_for_measurement_units_base.dart';

/*
Practice Question 4: Enhanced Enum for Measurement Units

Question:

Create an enhanced enum MeasurementUnit with values Meter, Kilogram, Second.

Add a toBaseUnit method that converts a given value to a base unit 
(e.g., 1 kilometer to 1000 meters, 1 hour to 3600 seconds).

Implement a property unitSymbol that returns the symbol for each unit (e.g., Meter returns "m").
 */

enum MeasurementUnit {
  Meter,
  Kilogram,
  Second;

  int toBaseUnit(int initial) => (this == Meter) ? 1 * initial : (this == Kilogram) ? initial * 1000 : 1 * initial;

  get unitSymbol => (this == Meter) ? 'm' : (this == Kilogram) ? 'kg' : 's';
}