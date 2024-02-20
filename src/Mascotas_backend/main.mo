import Float "mo:base/Float";
import Text "mo:base/Text";
import Nat "mo:base/Nat";

actor {

  public query func amountEspecie(base : Float, mult: Float) : async Float{
    var total : Float = base * mult;
    return total;
  };

  public query func amountType(amount: Float, difference: Float, typeOf: Text) : async Float {
      var final: Float = amount - (difference * 5 * amount / 100);

      if(typeOf == "basico"){
        final := final *1.3;
        return final;
      };
      final := final*1.5;
      return final;
  };
    
  public query func textEspecie(typeEspecie: Text): async Text {
    var final : Text = "Nan"; 

    if(typeEspecie == "1"){
      final:="Perro";
    };

    if(typeEspecie == "2"){
      final:="Gato";
    };

    if(typeEspecie == "3"){
      final:="Conejo";
    };

    if(typeEspecie == "4"){
      final:="Hámster";
    };

    if(typeEspecie == "5"){
      final:="Loro";
    };

    return final;
  };
};