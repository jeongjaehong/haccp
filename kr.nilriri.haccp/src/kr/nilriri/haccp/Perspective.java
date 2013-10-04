package kr.nilriri.haccp;

import org.eclipse.ui.IFolderLayout;
import org.eclipse.ui.IPageLayout;
import org.eclipse.ui.IPerspectiveFactory;
import org.eclipse.ui.IPlaceholderFolderLayout;

public class Perspective implements IPerspectiveFactory {

	private static final String ID = "kr.nilriri.haccp.perspective"; //$NON-NLS-1$

	public void createInitialLayout(IPageLayout layout) {
		addPerspectiveShortcuts(layout);

		String editorArea = layout.getEditorArea();
		layout.setEditorAreaVisible(true);
		layout.setFixed(false);

		IFolderLayout leftFolder = layout.createFolder(TestView.ID,
				IPageLayout.LEFT, 0.30f, editorArea);
		leftFolder.addView(TestView.ID);

		layout.addView(CodeManager.ID, IPageLayout.TOP, 1.0f, editorArea);
		//IPlaceholderFolderLayout editor = layout.getFolderForView(editorArea);
		//editor.addPlaceholder(CodeManager.ID);
		
		

		// layout.addStandaloneView("test.test", true, IPageLayout.LEFT, 1.30f,
		// editorArea);

		// IFolderLayout leftUnderFolder =
		// layout.createFolder("id"+ExplorerViewer.ID, IPageLayout.BOTTOM,
		// 0.30f, "id"+ManagerViewer.ID);
		// leftUnderFolder.addView(ExplorerViewer.ID);

		// viewer closealbe false
		// IViewLayout viewManagerLayout = layout.getViewLayout(TestView.ID);
		// viewManagerLayout.setCloseable(false);

		// IViewLayout viewExplorerLayout =
		// layout.getViewLayout(ExplorerViewer.ID);
		// viewExplorerLayout.setCloseable(false);

		// layout.addView("kr.nilriri.haccp.test", IPageLayout.LEFT, 0.5f,
		// IPageLayout.ID_EDITOR_AREA);
		// layout.addView("org.eclipse.ui.console.ConsoleView",
		// IPageLayout.BOTTOM, 0.5f, IPageLayout.ID_EDITOR_AREA);

	}

	private void addPerspectiveShortcuts(IPageLayout layout) {
	}
}
