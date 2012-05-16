package arn.textAnimController
{
	import flupie.textanim.TextAnimBlock;
	import com.greensock.TweenMax;
	import com.greensock.easing.Quad;
	import arn.textAnimController.ITextAnimBehaviour;

	public class InScaleBlockBehaviour implements ITextAnimBehaviour
	{
	
		public function InScaleBlockBehaviour(){}
		
		public function show(block:TextAnimBlock):void
		{
			block.scaleX = block.scaleY	 = 0;
			//block.alpha = 0;
			TweenMax.to(block, .4, {scaleX:2, scaleY:2, ease:Quad.easeOut});
			TweenMax.to(block, .4, {scaleX:1, scaleY:1, ease:Quad.easeOut, delay:.4});
		}
		
		public function hide(block:TextAnimBlock):void
		{
			TweenMax.to(block, .7, {scaleX:0, scaleY:0, ease:Quad.easeOut, onComplete:function ():void
																																								{
																																									block.visible = false;
																																								}});
		}	
	}

}