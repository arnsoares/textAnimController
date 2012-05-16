package arn.textAnimController
{
	import flupie.textanim.TextAnimBlock;
	import com.greensock.TweenMax;
	import arn.textAnimController.ITextAnimBehaviour;

	public class SimpleFadeBehaviour implements ITextAnimBehaviour
	{
	
		public function SimpleFadeBehaviour()
		{
			super();
		}
		
		public function show(block:TextAnimBlock):void
		{
			block.alpha = 0.0;
			TweenMax.to(block, 0.7, {autoAlpha:1.0});
		}
		
		public function hide(block:TextAnimBlock):void
		{
			TweenMax.to(block, 0.4, {autoAlpha:0.0});
		}
	
	}

}