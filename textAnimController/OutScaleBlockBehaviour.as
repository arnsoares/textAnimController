package arn.textAnimController
{
	import flupie.textanim.TextAnimBlock;
	import com.greensock.TweenMax;
	import com.greensock.easing.Back;
	import com.greensock.easing.Elastic;
	import com.greensock.easing.Bounce;
	import com.greensock.easing.Quart;
	import com.greensock.easing.Quad;
	import arn.textAnimController.ITextAnimBehaviour;

	public class OutScaleBlockBehaviour implements ITextAnimBehaviour
	{
	
		public function OutScaleBlockBehaviour()
		{
			super();
		}
		
		public function show(block:TextAnimBlock):void
		{
			block.scaleX = block.scaleY	 = 5;
			block.alpha = 0;
			TweenMax.to(block, .4, {scaleX:1, scaleY:1, ease:Quad.easeOut});
			TweenMax.to(block, .2, {autoAlpha:1});
		}
		
		public function hide(block:TextAnimBlock):void
		{
			TweenMax.to(block, .4, {scaleX:2, scaleY:2, autoAlpha:0, ease:Quad.easeOut});
		}
	
	}

}