cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  reactive-non-affective-psychotic-disorders---primary:
    run: reactive-non-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  non-affective-psychotic-disorders-hallucination---primary:
    run: non-affective-psychotic-disorders-hallucination---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: reactive-non-affective-psychotic-disorders---primary/output
  persistent-non-affective-psychotic-disorders---primary:
    run: persistent-non-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-hallucination---primary/output
  non-affective-psychotic-disorders-schizophrenifrm---primary:
    run: non-affective-psychotic-disorders-schizophrenifrm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: persistent-non-affective-psychotic-disorders---primary/output
  non-affective-psychotic-disorders-folie---primary:
    run: non-affective-psychotic-disorders-folie---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-schizophrenifrm---primary/output
  acute-non-affective-psychotic-disorders---primary:
    run: acute-non-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-folie---primary/output
  transient-non-affective-psychotic-disorders---primary:
    run: transient-non-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: acute-non-affective-psychotic-disorders---primary/output
  non-affective-psychotic-disorders-delusion---primary:
    run: non-affective-psychotic-disorders-delusion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: transient-non-affective-psychotic-disorders---primary/output
  non-affective-psychotic-disorders-delirante---primary:
    run: non-affective-psychotic-disorders-delirante---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-delusion---primary/output
  non-affective-psychotic-disorders-remission---primary:
    run: non-affective-psychotic-disorders-remission---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-delirante---primary/output
  psychogenic-non-affective-psychotic-disorders---primary:
    run: psychogenic-non-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-remission---primary/output
  non-affective-psychotic-disorders-paranoia---primary:
    run: non-affective-psychotic-disorders-paranoia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: psychogenic-non-affective-psychotic-disorders---primary/output
  non-affective-psychotic-disorders-insight---primary:
    run: non-affective-psychotic-disorders-insight---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-paranoia---primary/output
  non-affective-psychotic-disorders-episode---primary:
    run: non-affective-psychotic-disorders-episode---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-insight---primary/output
  non-affective-psychotic-disorders-oneirophrenia---primary:
    run: non-affective-psychotic-disorders-oneirophrenia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-episode---primary/output
  non-affective-psychotic-disorders-psychoses---primary:
    run: non-affective-psychotic-disorders-psychoses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-oneirophrenia---primary/output
  nonorganic-non-affective-psychotic-disorders---primary:
    run: nonorganic-non-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-psychoses---primary/output
  atypical-non-affective-psychotic-disorders---primary:
    run: atypical-non-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: nonorganic-non-affective-psychotic-disorders---primary/output
  non-affective-psychotic-disorders-induced---primary:
    run: non-affective-psychotic-disorders-induced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: atypical-non-affective-psychotic-disorders---primary/output
  non-affective-psychotic-disorders-psychosis---primary:
    run: non-affective-psychotic-disorders-psychosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-induced---primary/output
  brief-non-affective-psychotic-disorders---primary:
    run: brief-non-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-psychosis---primary/output
  non-affective-psychotic-disorders-querulan---primary:
    run: non-affective-psychotic-disorders-querulan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: brief-non-affective-psychotic-disorders---primary/output
  non-affective-psychotic-disorders-capgras---primary:
    run: non-affective-psychotic-disorders-capgras---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-querulan---primary/output
  cycloid-non-affective-psychotic-disorders---primary:
    run: cycloid-non-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-capgras---primary/output
  visual-non-affective-psychotic-disorders---primary:
    run: visual-non-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: cycloid-non-affective-psychotic-disorders---primary/output
  non-affective-psychotic-disorders-resolved---primary:
    run: non-affective-psychotic-disorders-resolved---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: visual-non-affective-psychotic-disorders---primary/output
  non-affective-psychotic-disorders-cotard---primary:
    run: non-affective-psychotic-disorders-cotard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-resolved---primary/output
  non-affective-psychotic-disorders-paraphrenia---primary:
    run: non-affective-psychotic-disorders-paraphrenia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-cotard---primary/output
  nonaffective-psychotic-disorders---primary:
    run: nonaffective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-paraphrenia---primary/output
  non-affective-psychotic-disorders-persecution---primary:
    run: non-affective-psychotic-disorders-persecution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: nonaffective-psychotic-disorders---primary/output
  catatonic-non-affective-psychotic-disorders---primary:
    run: catatonic-non-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-persecution---primary/output
  non-affective-psychotic-disorders-undifferentiated---primary:
    run: non-affective-psychotic-disorders-undifferentiated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: catatonic-non-affective-psychotic-disorders---primary/output
  subchronic-non-affective-psychotic-disorders---primary:
    run: subchronic-non-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-undifferentiated---primary/output
  non-affective-psychotic-disorders-schizotypal---primary:
    run: non-affective-psychotic-disorders-schizotypal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: subchronic-non-affective-psychotic-disorders---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: non-affective-psychotic-disorders-schizotypal---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
