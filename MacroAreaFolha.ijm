//Alunos:Bruno Machado Ferreira(181276) e Ernani Neto(180914)
//Macro no ImageJ
//Imagens usadas na atividade podem ser obtidas em https://www.dropbox.com/sh/3l18b4gxcnevbej/AAACmOBJLKPZfnAJGO97f0noa


run("Size...", "width=1000 height=666 depth=1 constrain average interpolation=Bilinear");

run("Set Scale...", "distance=137.5275 known=5 pixel=1 unit=cm global");

makeRectangle(279, 145, 457, 454);
run("Crop");

min=newArray(3);
max=newArray(3);
filter=newArray(3);
a=getTitle();
run("HSB Stack");
run("Convert Stack to Images");
selectWindow("Hue");
rename("0");
selectWindow("Saturation");
rename("1");
selectWindow("Brightness");
rename("2");
min[0]=0;
max[0]=80;
filter[0]="pass";
min[1]=90;
max[1]=255;
filter[1]="pass";
min[2]=0;
max[2]=90;
filter[2]="pass";
for (i=0;i<3;i++){
  selectWindow(""+i);
  setThreshold(min[i], max[i]);
  run("Convert to Mask");
  if (filter[i]=="stop")  run("Invert");
}
imageCalculator("AND create", "0","1");
imageCalculator("AND create", "Result of 0","2");
for (i=0;i<3;i++){
  selectWindow(""+i);
  close();
}
selectWindow("Result of 0");
close();
selectWindow("Result of Result of 0");
rename(a);

run("8-bit");

run("Options...", "iterations=2 count=1 do=Nothing");

run("Close-");
run("Open");

run("Analyze Particles...", "size=2-Infinity display");
