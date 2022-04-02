public class <%= apiName %> extends DCP_BaseController {
    public override DCP_ResponseWr execute(Map<String, Object> mParamsByName){
        try{
            String actionName = String.valueOf(mParamsByName.get(DCP_ControllerExecuterConstants.PARAM_ACTION));
            switch on actionName{
                when else { throw new <%= apiName %>Exception('Invalid action'); }
            }
        }catch(Exception e){ return new DCP_ResponseWr(false,e,null); }
    }

    private class <%= apiName %>Exception extends Exception{}
}
