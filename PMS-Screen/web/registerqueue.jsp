<%-- 
    Document   : registerqueue
    Created on : Jan 13, 2017, 10:53:48 AM
    Author     : shay
--%>
<%@page import="main.RMIConnector"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Config.connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%                  
                    RMIConnector rmic = new RMIConnector();
                    String now = request.getParameter("now");
                    String pmi = request.getParameter("pmi");
                    String epiDate = request.getParameter("epiDate");
                    String name = request.getParameter("name");
                    String newic = request.getParameter("newic");
                    String oldic = request.getParameter("oldic");
                    String typeId = request.getParameter("typeId");
                    String idNo = request.getParameter("idNo");
                    String rnNo = request.getParameter("rnNo");
                    String patCatCode = request.getParameter("patCatCode");
                    String visTyCode = request.getParameter("visTyCode");
                    String emTy = request.getParameter("emTy");
                    String eliCatCode = request.getParameter("eliCatCode");
                    String eliTyCode = request.getParameter("eliTyCode");
                    String disCode = request.getParameter("disCode");
                    String subDiscode = request.getParameter("subDiscode");
                    String consultRoom = request.getParameter("consultRoom");
                    String comQueue = request.getParameter("comQueue");
                    String doctor = request.getParameter("doctor");
                    String prioGruCode = request.getParameter("prioGruCode");
                    String commDis = request.getParameter("commDis");
                    String polCase = request.getParameter("polCase");
                    String natuDisasCode = request.getParameter("natuDisasCode");
                    String docTy = request.getParameter("docTy");
                    String guardInd = request.getParameter("guardInd");
                    String referNo = request.getParameter("referNo");
                    String gruGuard = request.getParameter("gruGuard");
                    String glExpDate = request.getParameter("glExpDate");
                    String epiTime = request.getParameter("epiTime");
                    String stat = request.getParameter("stat");
                    String hfc = request.getParameter("hfc");
                    
                    String insertEpisode = "INSERT INTO pms_episode(PMI_NO,EPISODE_DATE,NAME,NEW_IC_NO,OLD_IC_NO,ID_TYPE,ID_NO,RN_NO,PATIENT_CATEGORY_CODE,VISIT_TYPE_CODE,EMERGENCY_TYPE_CODE,"+ "ELIGIBILITY_CATEGORY_CODE,ELIGIBILITY_TYPE_CODE,DISCIPLINE_CODE,SUBDISCIPLINE_CODE,CONSULTATION_ROOM,COMMON_QUEUE,DOCTOR,PRIORITY_GROUP_CODE,POLICE_CASE,COMMUNICABLE_DISEASE_CODE,NATURAL_DISASTER_CODE,DOC_TYPE,GUARDIAN_IND,REFERENCE_NO,GROUP_GUARDIAN,GL_EXPIRY_DATE,EPISODE_TIME,STATUS,HEALTH_FACILITY_CODE)"
                            + "VALUES ('"+pmi+"','"+epiDate+"','"+name+"','"+newic+"','"+oldic+"','"+typeId+"','"+idNo+"','"+rnNo+"','"+patCatCode+"','"+visTyCode+"','"+emTy+"','"+eliCatCode+"','"+eliTyCode+"','"+disCode+"','"+subDiscode+"','"+consultRoom+"','"+comQueue+"','"+doctor+"','"+prioGruCode+"','"+polCase+"','"+commDis+"','"+natuDisasCode+"','"+docTy+"','"+guardInd+"','"+referNo+"','"+gruGuard+"','"+glExpDate+"','"+epiTime+"','"+stat+"','"+hfc+"')";
                    
                    //String testInsert = "insert into pms_episode(pmi_no)values('"+pmi+"')";
                    String isAlreadyRegister = "select * from pms_episode where pmi_no = '"+pmi+"' and (status like '%Consult%' or status like '%Waiting%' or status like '%Hold%' or status like '%Second Opinion%') and episode_date like '%"+now+"%'";
                    ArrayList<ArrayList<String>> alreadyRegis = connect.getData(isAlreadyRegister);
                    
                    if(alreadyRegis.size()>0){
out.print("already");
                     }else{
                        rmic.setQuerySQL(connect.HOST, connect.PORT, insertEpisode); 
out.print("Success"); 
                   }
                    
%>
