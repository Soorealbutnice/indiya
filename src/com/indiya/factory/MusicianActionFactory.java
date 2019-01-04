package com.indiya.factory;

import com.indiya.action.musician.*;


public class MusicianActionFactory {
	private static JamListAction jamListAction;
	private static JamRegisterAction jamRegisterAction;
	private static JamViewAction jamViewAction;
	private static JamApplyAction jamApplyAction;
	private static JamUpdateStateAction jamUpdateStateAction;
	
	private static MusicianAction musicianAction;
	private static MusicianBasicInfoAction musicianBasicInfoAction;
	private static MusicianMemberListAction musicianMemberListAction;
	private static MusicianMemberApplyAction musicianMemberApplyAction;
	private static MusicianPicListAction musicianPicListAction;
	private static MusicianMovieListAction musicianMovieListAction;
	private static MusicianCommentAddAction musicianCommentAddAction;
	
	static {
		jamListAction = JamListAction.getJamListAction();
		jamRegisterAction = JamRegisterAction.getJamRegisterAction();
		jamViewAction= JamViewAction.getJamViewAction();
		jamApplyAction = JamApplyAction.getJamApplyAction();
		jamUpdateStateAction = JamUpdateStateAction.getJamUpdateStateAction();
		
		musicianAction = MusicianAction.getMusicianAction();
		musicianBasicInfoAction = MusicianBasicInfoAction.getMusicianBasicInfoAction();
		musicianMemberListAction = MusicianMemberListAction.getMusicianMemberListAction();
		musicianMemberApplyAction = MusicianMemberApplyAction.getMusicianMemberApplyAction();
		musicianPicListAction = MusicianPicListAction.getMusicianPicListAction();
		musicianMovieListAction = MusicianMovieListAction.getMusicianMovieListAction();
		musicianCommentAddAction = MusicianCommentAddAction.getMusicianCommentAddAction();
	}
	
	public static JamListAction getJamListAction() {
		return jamListAction;
	}

	public static JamRegisterAction getJamRegisterAction() {
		return jamRegisterAction;
	}

	public static JamViewAction getJamViewAction() {
		return jamViewAction;
	}

	public static JamApplyAction getJamApplyAction() {
		return jamApplyAction;
	}

	public static JamUpdateStateAction getJamUpdateStateAction() {
		return jamUpdateStateAction;
	}

	public static MusicianBasicInfoAction getMusicianBasicInfoAction() {
		return musicianBasicInfoAction;
	}

	public static MusicianMemberListAction getMusicianMemberListAction() {
		return musicianMemberListAction;
	}

	public static MusicianMemberApplyAction getMusicianMemberApplyAction() {
		return musicianMemberApplyAction;
	}

	public static MusicianPicListAction getMusicianPicListAction() {
		return musicianPicListAction;
	}

	public static MusicianMovieListAction getMusicianMovieListAction() {
		return musicianMovieListAction;
	}

	public static MusicianAction getMusicianAction() {
		return musicianAction;
	}

	public static MusicianCommentAddAction getMusicianCommentAddAction() {
		return musicianCommentAddAction;
	}
	
	
}
