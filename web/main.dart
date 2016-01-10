import 'dart:html';

main()
{
    // name -> querySelector("[name='number']")
    // tag -> querySelector("input")
    // class -> querySelector(".number")
    // id -> querySelector("#number")
    /* use var dat, as data type of dat, where unsure and use print(dat.runtimeType) to learn
     * InputElement num = document.querySelector("#number"); //not necessary to write document because it's understood/implicit
    print(num.value); */
    //num number = (document.querySelector("#number")).value;
    // above thing not accurate because it's a html element which doesn't have .value
    //num number = (document.querySelector("#number") as InputElement).value; still it's a string not nuber
    //num number = int.parse((document.querySelector("#number") as InputElement).value); // remember .value gives value of that object
    //print(number);
    //var firstOne = document.querySelector("#div");
    //print(firstOne.runtimeType);
    /* DivElement firstOne = document.querySelector("#div");
     * firstOne.text = "Hi, there!"; // or instead of .text we can use .innerHtml where text will go as a tag(no difference) of .innerHtml = '<input>' which will put a input tag
    */
    /*DivElement div1 = document.querySelector("#div");
    ButtonInputElement button = document.querySelector("#button");
    NumberInputElement number = document.querySelector("#number");
    button.onClick.listen((_){
        div1.text = number.value;
    });
    number.onChange.listen((MouseEvent e){
        div1.text = number.value;   //to check e print e.rutimeType
    });*/
    NumberInputElement height = document.querySelector("#height");
    NumberInputElement weight = document.querySelector("#weight");
    DivElement result = document.querySelector("#result");
    ButtonInputElement submit = document.querySelector("#button");
    /*num heightVal = int.parse(height.value);
    num weightVal = int.parse(weight.value);
    const int cVal = 703;
    submit.onClick.listen((_){
        result.text = ((weightVal * cVal)/(heightVal * heightVal)).toString();
    });*/
    //String str;
    submit.onClick.listen((_){
        result.text = bodyMassIndex(weight.valueAsNumber, height.valueAsNumber).toString();
        //str = bodyMassIndex(weight.valueAsNumber, height.valueAsNumber).toString();
        //window.alert(str);
        // or we can use window.alert(str);
    });

}

num bodyMassIndex(num tempWeight, num tempHeight)
{
    return ((703*tempWeight)/(tempHeight*tempHeight));
}
