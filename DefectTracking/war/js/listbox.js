// create a javascript function to change the item from one list box to another 

function addOption(selectObject,optionText) {
    var optionObject = new Option(optionText)
    var optionRank = selectObject.options.length
    selectObject.options[optionRank]=optionObject
}
function moveLeft(source,target){
	var optionIdx;
	for(optionIdx=source.options.length-1;optionIdx>=0;optionIdx--)
	{
	if(source.options[optionIdx].selected){
		var val=source.options[optionIdx].value;
		var txt=source.options[optionIdx].text;
		createOption(target,txt,val);
		source.remove(optionIdx);
	}
	}

}
function moveRight(source,target){
	var optionIdx;
	for(optionIdx=source.options.length-1;optionIdx>=0;optionIdx--)
	{
	if(source.options[optionIdx].selected){
		var val=source.options[optionIdx].value;
		var txt=source.options[optionIdx].text;
		createOption(target,txt,val);
		source.remove(optionIdx);
	}
	}
}
function moveLeftAll(source,target){
	addAll(source,target);
	removeAll(source);
}
function moveRightAll(source,target){
	addAll(source,target);
	removeAll(source);
} 
function createOption(sltObject,txt,val)
{
	var optn = document.createElement("OPTION");
	optn.text = txt;
	optn.value = val;
	sltObject.options.add(optn);
}

function addAll(source,target){
	var optionIdx;
	for(optionIdx=0; optionIdx<source.options.length;optionIdx++)
	{
		var val=source.options[optionIdx].value;
		var txt=source.options[optionIdx].text;
		createOption(target,txt,val);
	}
} 

function removeAll(obj){
	var optionIdx;
	
	for(optionIdx=obj.options.length-1; obj.options.length>0;optionIdx--)
	{
		obj.remove(optionIdx);
	}
} 

function add()
{
 if (document.forms[0].list1.selectedIndex!=-1)
  {
  		var i=document.forms[0].list1.selectedIndex;
		var x=document.forms[0].list1.options[i].text;
		var val=document.forms[0].list1.options[i].value;
		addOption(document.forms[0].list2,x);
		deleteOption(document.forms[0].list1,document.forms[0].list1.selectedIndex);
		//activeUpdateButton();
   } else {
      alert("Select an option and click Add")
  }
}

function Delete() {
        if (document.forms[0].list2.selectedIndex!=-1) {
        var i=document.forms[0].list2.selectedIndex;
		var x=document.forms[0].list2.options[i].text;
		addOption(document.forms[0].list1,x);
        deleteOption(document.forms[0].list2,document.forms[0].list2.selectedIndex);
        //activeUpdateButton();
    } else {
        alert("Select an option and click Delete")
    }
}

function deleteOption(selectObject,optionRank) {
    if (selectObject.options.length!=0) 
    { 
    selectObject.options[optionRank]=null 
    }
}



function getFilterName()
{
	var i=document.forms[0].list2.length;
	var x="";
	if(i!=0)
	{
		for(j=0;j<i;j++)
		{
			x=document.forms[0].list2.options[j].value+"&"+x;
		}
		document.getElementById('selectedFieldsName').value=x;
		getPresentationFieldName();
	}else{
		alert("Please select a book");
		return false;
	}
}


function getPresentationFieldName()
{
	var i=document.forms[0].list3.length;
	var x="";
	if(i!=0)
	{
		for(j=0;j<i;j++)
		{
			x=document.forms[0].list3.options[j].value+"&"+x;
		}
		document.getElementById('presentationFeldsName').value=x;
		
	}else{
		alert("Please select a book");
		return false;
	}
}





// JavaScript function for move UP,DOWN and TOP,BOTTOM

function moveUp(sltId) {
	var sid= document.getElementById(sltId);
	var selectedIdx=sid.selectedIndex;
	if(selectedIdx>0){
	SwapItem(sid,selectedIdx,selectedIdx-1);
	}
	else{
	alert("Please select a proper Item");
	}
}
function moveDown(sltId) {
	var sid= document.getElementById(sltId);
	var selectedIdx=sid.selectedIndex;
	//alert(selectedIdx);
	if(selectedIdx>-1){
	SwapItem(sid,selectedIdx,selectedIdx+1);
	}
	else{
	alert("Please select a proper Item");
	}
}

function moveTop(sltId) {
	var sid= document.getElementById(sltId);
	var selectedIdx=sid.selectedIndex;
	if(selectedIdx>0){
	SwapItem(sid,selectedIdx,0);
	}
	else{
	alert("Please select a proper Item");
	}
}

function moveBottom(sltId) {
	var sid= document.getElementById(sltId);
	var len=sid.length;
	var selectedIdx=sid.selectedIndex;
	if(selectedIdx>-1){
	SwapItem(sid,selectedIdx,len-1);
	}
	else{
	alert("Please select a proper Item");
	}
}

function SwapItem(s, itemPos, swapPos) {
    var tempOption = new Array(s.options[swapPos].text,  s.options[swapPos].value);
    s.options[swapPos].text = s.options[itemPos].text;
    s.options[swapPos].value = s.options[itemPos].value;
    s.options[itemPos].text = tempOption[0];
    s.options[itemPos].value = tempOption[1];
    s.selectedIndex = swapPos;
}

