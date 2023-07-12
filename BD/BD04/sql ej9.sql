select stage.stage, stage.departure, stage.arrival as arrival, pass.height as height 
/*selects to show the columns for the search, the stage nº, where the stages starts, where endsm and the height of the pass*/
from stage
inner join pass /*joins the pass table with the stage table with the stage relation*/
on pass.stage = stage.stage
Where pass.height >1300 /*determines the condition. In that case the stages wich a pass more than 1300m to shows them */