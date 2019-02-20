/*
 * generated by Xtext 2.12.0
 */
package de.iaas.grossmann.ccpl.ide

import com.google.inject.Guice
import de.iaas.grossmann.ccpl.CCPLRuntimeModule
import de.iaas.grossmann.ccpl.CCPLStandaloneSetup
import org.eclipse.xtext.util.Modules2

/**
 * Initialization support for running Xtext languages as language servers.
 */
class CCPLIdeSetup extends CCPLStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new CCPLRuntimeModule, new CCPLIdeModule))
	}
	
}