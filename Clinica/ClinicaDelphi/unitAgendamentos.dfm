�
 TFORMAGENDAMENTOS 0T  TPF0TFormAgendamentosFormAgendamentosLeft Top BorderIconsbiSystemMenu BorderStylebsSingleCaptionAgendamentosClientHeight�ClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameSegoe UI
Font.Style 
TextHeight TLabelLabel2Left TopkWidthLHeightCaptionID do Paciente  TLabelLabel4Left� TopkWidthbHeightCaptionNome do Paciente  TLabelLabel3Left!Top� WidthHeightCaptionData  TLabelLabel5Left� Top� WidthHeightCaptionHora  TLabelLabel6Left�Top� WidthGHeightCaptionEspecialidade  TLabelLabel7Left!Top� Width]HeightCaption   Nome do Médico  TLabelLabel8Left�Top� WidthmHeightCaption   Modelo de convênio  TLabellabelConsultaLeft!Top�Width� HeightCaption*Digite o ID do paciente que deseja buscar:  TLabelLabel9Left�TopxWidthrHeightCaptionBuscar Agendamento  TLabelLabel10Left�Top� Width� HeightCaptionPACIENTES CADASTRADOS  TPanelPanel1Left Top WidthHeightQAlignalTopTabOrderExplicitWidth� TLabelLabel1Left TopWidth� Height%CaptionAgendamentosFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameSegoe UI
Font.StylefsBold 
ParentFont  TDBNavigatorDBNavigator1LeftqTopWidthHeight
DataSourceDM.DsAgendamentoTabOrder    TDBEdittxtIDPacienteLeft"Top� WidthuHeight	DataFieldid
DataSourceDM.DsAgendamentoTabOrder   TDBLookupComboBoxBoxNomePacienteLeft� Top� Width�Height	DataFieldid_paciente
DataSourceDM.DsAgendamentoKeyFieldid	ListFieldnome
ListSourceDM.DsPacienteTabOrder  TDBEdittxtDataLeft!TopWidthUHeight	DataField
data_exame
DataSourceDM.DsAgendamento	MaxLength
TabOrder  TDBEdittxtHoraLeft� TopWidthxHeight	DataField
hora_exame
DataSourceDM.DsAgendamento	MaxLengthTabOrder  TDBLookupComboBoxBoxNomeMedicoLeft!Top� WidthHeight	DataFieldmedico
DataSourceDM.DsAgendamentoKeyFieldnome	ListFieldnome
ListSourceDM.DsMedicoTabOrder  TDBLookupComboBoxBoxEspecialidadeLeft�Top� Width� Height	DataFieldespecialidade
DataSourceDM.DsAgendamentoKeyFieldespecialidade	ListFieldespecialidade
ListSourceDM.DsMedicoTabOrder  TDBComboBoxDBComboBox1Left�TopWidth� Height	DataFieldconvenio
DataSourceDM.DsAgendamentoItems.Strings   Convênio médico
Particular TabOrder  TDBGridgridConsultaLeft"TopWidthTHeight� 
DataSourceDM.DsConsultaFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameSegoe UI
Font.Style 
ParentFontTabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameSegoe UITitleFont.StylefsBold ColumnsExpanded	FieldNameidTitle.CaptionID DO PACIENTEWidthaVisible	 Expanded	FieldNamemedicoTitle.Caption   MÉDICOWidthkVisible	 Expanded	FieldNameespecialidadeTitle.CaptionESPECIALIDADEWidthyVisible	 Expanded	FieldNameconvenioTitle.Caption	   CONVÊNIOVisible	 Expanded	FieldName
data_exameTitle.CaptionDATAWidth� Visible	 Expanded	FieldName
hora_exameTitle.Caption   HORÁRIOVisible	    TRadioGroupGrupoAgendamentoLeft!Top>WidthYHeightQCaption   Opções de ConsultaColumns	ItemIndex Items.StringsID do paciente   MédicoDataEspecialidade TabOrder	OnClickGrupoAgendamentoClick  TEdittxtConsultaLeft Top�WidthXHeightTabOrder
  TButtonbotaoConsultaLeft!Top�WidthXHeight*CaptionRealizar ConsultaTabOrderOnClickbotaoConsultaClick  TDBGridgridAgendamentoLeft�Top� WidthUHeight
DataSourceDM.DsAgendamentoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameSegoe UI
Font.Style 
ParentFontTabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameSegoe UITitleFont.StylefsBold ColumnsExpanded	FieldNameidTitle.CaptionID DO PACIENTEVisible	 Expanded	FieldNamemedicoTitle.Caption   MÉDICOWidthZVisible	 Expanded	FieldName
data_exameTitle.CaptionDATAVisible	 Expanded	FieldName
hora_exameTitle.Caption   HORÁRIOVisible	    TEdittxtBuscaLeft�Top� Width@HeightTabOrderOnChangetxtBuscaChange   