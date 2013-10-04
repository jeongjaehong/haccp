package kr.nilriri.haccp;

import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IToolBarManager;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.swt.SWT;
import org.eclipse.swt.events.SelectionAdapter;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Button;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.part.ViewPart;

public class TestView extends ViewPart {

	public static final String ID = "kr.nilriri.haccp.testview"; //$NON-NLS-1$
	private Text text;

	public TestView() {
	}

	/**
	 * Create contents of the view part.
	 * @param parent
	 */
	@Override
	public void createPartControl(Composite parent) {
		Composite container = new Composite(parent, SWT.NONE);
		container.setLayout(new GridLayout(1, false));
		{
			Composite composite = new Composite(container, SWT.NONE);
			composite.setLayout(new GridLayout(5, false));
			GridData gd_composite = new GridData(SWT.FILL, SWT.CENTER, true, false, 1, 1);
			gd_composite.heightHint = 67;
			composite.setLayoutData(gd_composite);
			{
				Label lblNewLabel = new Label(composite, SWT.NONE);
				lblNewLabel.setAlignment(SWT.RIGHT);
				GridData gd_lblNewLabel = new GridData(SWT.CENTER, SWT.CENTER, false, false, 1, 1);
				gd_lblNewLabel.widthHint = 150;
				lblNewLabel.setLayoutData(gd_lblNewLabel);
				lblNewLabel.setText("New Label");
			}
			new Label(composite, SWT.NONE);
			{
				text = new Text(composite, SWT.BORDER);
				GridData gd_text = new GridData(SWT.LEFT, SWT.CENTER, false, false, 1, 1);
				gd_text.widthHint = 120;
				gd_text.heightHint = 25;
				text.setLayoutData(gd_text);
			}
			new Label(composite, SWT.NONE);
			
			Button btnNewButton = new Button(composite, SWT.NONE);
			GridData gd_btnNewButton = new GridData(SWT.CENTER, SWT.CENTER, false, false, 1, 1);
			gd_btnNewButton.heightHint = 35;
			gd_btnNewButton.widthHint = 100;
			btnNewButton.setLayoutData(gd_btnNewButton);
			btnNewButton.addSelectionListener(new SelectionAdapter() {
				@Override
				public void widgetSelected(SelectionEvent e) {
					MessageDialog.openInformation(null, "Information", text.getText() + "\n\nYou are having fun! Java is awesome.");  
				}
			});
			btnNewButton.setText("New Button");
			new Label(composite, SWT.NONE);
			new Label(composite, SWT.NONE);
			new Label(composite, SWT.NONE);
			new Label(composite, SWT.NONE);
			new Label(composite, SWT.NONE);
			new Label(composite, SWT.NONE);
			new Label(composite, SWT.NONE);
			new Label(composite, SWT.NONE);
			new Label(composite, SWT.NONE);
			new Label(composite, SWT.NONE);
		}

		createActions();
		initializeToolBar();
		initializeMenu();
	}

	/**
	 * Create the actions.
	 */
	private void createActions() {
		// Create the actions
	}

	/**
	 * Initialize the toolbar.
	 */
	private void initializeToolBar() {
		IToolBarManager toolbarManager = getViewSite().getActionBars()
				.getToolBarManager();
	}

	/**
	 * Initialize the menu.
	 */
	private void initializeMenu() {
		IMenuManager menuManager = getViewSite().getActionBars()
				.getMenuManager();
	}

	@Override
	public void setFocus() {
		// Set the focus
	}
}
