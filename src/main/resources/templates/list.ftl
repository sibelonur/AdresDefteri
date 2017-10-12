<div class="generic-container">
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"><span class="lead">User </span></div>
		<div class="panel-body">
	        <div class="formcontainer">
	            <div class="alert alert-success" role="alert" ng-if="ctrl.successMessage">{{ctrl.successMessage}}</div>
	            <div class="alert alert-danger" role="alert" ng-if="ctrl.errorMessage">{{ctrl.errorMessage}}</div>
	            <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
	                <input type="hidden" ng-model="ctrl.user.id" />
	                <div class="row">
	                    <div class="form-group col-md-12">
	                        <label class="col-md-2 control-lable" for="name">Name</label>
	                        <div class="col-md-7">
	                            <input type="text" ng-model="ctrl.user.name" id="name" class="username form-control input-sm" placeholder="Enter your name" required ng-minlength="3"/>
	                        </div>
	                    </div>
	                </div>

	                <div class="row">
	                    <div class="form-group col-md-12">
	                        <label class="col-md-2 control-lable" for="surname">Surname</label>
	                        <div class="col-md-7">
	                            <input type="text" ng-model="ctrl.user.surname" id="surname" class="surname form-control input-sm" placeholder="Enter your surname" required ng-minlength="3"/>
	                        </div>
	                    </div>
	                </div>
	
	                <div class="row">
	                    <div class="form-group col-md-12">
	                        <label class="col-md-2 control-lable" for="address">Address</label>
	                        <div class="col-md-7">
	                            <input type="text" ng-model="ctrl.user.address" id="address" class="address form-control input-sm" placeholder="Enter your address" required "ng-minlength="3"/>
	                        </div>
	                    </div>
	                </div>


  					<div class="row">
	                    <div class="form-group col-md-12">
	                        <label class="col-md-2 control-lable" for="tck_no">Tck_no</label>
	                        <div class="col-md-7">
	                            <input type="text" ng-model="ctrl.user.tck_no" id="tck_no" class="tck_no form-control input-sm" placeholder="Enter your tck_no" required "ng-minlength="3"/>
	                        </div>
	                    </div>
	                </div>


	                <div class="row">
	                    <div class="form-actions floatRight">
	                        <input type= "submit"  value="{{!ctrl.user.id ? 'Add' : 'Update'}}"  class="btn btn-primary btn-sm" ng-disabled=" myForm.$pristine">
	                        <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
	                    </div>
	                </div>
	            </form>
    	    </div>
		</div>	
    </div>
    
    <div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading"  ng-init="Init();">
        <span class="lead">List of User </span></div>
		<div class="panel-body">
			<div class="table-responsive">
		        <table class="table table-hover">
		        
		            <thead>
		            <tr>
		                <th>ID</th>
		                <th>NAME</th>
		                <th>SURNAME</th>
		                <th>ADDRESS</th>
		                <th>TCK_NO</th>
		                <th width="100"></th>
		                <th width="100"></th>
		            </tr>
		            </thead>
		            <tbody>

		            <tr ng-repeat="u in ctrl.getAllUsers() | startFrom: (currentPage-1)*pageSize | limitTo: pageSize">
		                <td>{{u.id}}</td>
		                <td>{{u.name}}</td>
		                <td>{{u.surname}}</td>
		                <td>{{u.address}}</td>
		                <td>{{u.tck_no}}</td>
		                <td><button type="button" ng-click="ctrl.editUser(u.id)" class="btn btn-success custom-width">Edit</button></td>
		                <td><button type="button" ng-click="ctrl.removeUser(u.id)" class="btn btn-danger custom-width">Remove</button></td>
		            </tr>
		            
		            </tbody>
		        </table>
		        <div">
				    <button ng-disabled="currentPage == 1" ng-click="currentPage=currentPage-1">
				        Previous
				    </button>
				    {{currentPage}}/{{pageCount}}
				    <button ng-disabled="currentPage >= pageCount" ng-click="currentPage=currentPage+1">
				        Next
				    </button>
				</div>	
	

			</div>
		</div>
    </div>
</div>


