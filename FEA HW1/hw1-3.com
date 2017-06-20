from constants import *
from driverStandard import StandardAnalysis
import driverUtils, sys
options = {
    'analysisType':STANDARD,
    'applicationName':'analysis',
    'aqua':OFF,
    'beamSectGen':OFF,
    'complexFrequency':OFF,
    'contact':OFF,
    'coupledProcedure':OFF,
    'dataLineCheck':ON,
    'directCyclic':OFF,
    'dsa':OFF,
    'dynamic':OFF,
    'filPrt':[],
    'fils':[],
    'foundation':OFF,
    'geostatic':OFF,
    'heatTransfer':OFF,
    'importer':OFF,
    'includes':[],
    'initialConditionsFile':OFF,
    'input':'hw1-3',
    'job':'hw1-3',
    'massDiffusion':OFF,
    'mp_mode':THREADS,
    'outputKeywords':OFF,
    'parameterized':OFF,
    'partsAndAssemblies':OFF,
    'parval':OFF,
    'postOutput':OFF,
    'restart':OFF,
    'restartWrite':ON,
    'rezone':OFF,
    'runCalculator':OFF,
    'soils':OFF,
    'staticNonlinear':ON,
    'steadyStateTransport':OFF,
    'submodel':OFF,
    'substructure':OFF,
    'symmetricModelGeneration':OFF,
    'tmpdir':'C:\\DOCUME~1\\labuser\\LOCALS~1\\Temp',
    'tracer':OFF,
    'visco':OFF,
}
analysis = StandardAnalysis(options)
status = analysis.run()
sys.exit(status)
