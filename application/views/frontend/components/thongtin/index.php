<?php 
 ?>
<section id="content">
	<div class="container account">
        <div class="col-main col-md-9 col-sm-12">
            <div class="my-account">
                <div class="general__title">
                    <h2><span>Danh sách đơn hàng</span></h2>
                </div>
                <div class="dashboard">
                    <div class="recent-orders">
                        <div class="table-responsive">
                            <table class="data-table" id="my-orders-table" style="padding-right: 10px;">
                                <thead>
                                    <tr class="first last">
                                        <th class="text-left" style="
    width: 85px;
">Đơn hàng</th>
                                        <th style="    width: 150px;">Ngày</th>
                                        <th>Địa chỉ giao hàng</th>
                                        <th style="
    width: 150px;
    text-align: center;
"><span class="nobr">Giá trị đơn hàng</span></th>
                                        <th style="
    width: 100px;
    text-align: center;
">Xem</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $order = $this->Mcategory->order_listorder_customerid($info['id']);
                                    foreach ($order as $value):?>
                                        <tr class="first odd">
                                            <td>#<?php echo $value['orderCode'] ?></td>
                                            <td><?php echo $value['orderdate'] ?></td>
                                            <td><?php echo $value['address'] ?></td>
                                            <td style="text-align: center;"><span class="price-2"><?php echo number_format($value['money']) ?> VNĐ</span></td>
                                            <td class="a-center last"><span class="nobr"> <a href="account/orders/<?php echo $value['id'] ?>">Xem chi tiết</a></span></td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <aside class="col-right sidebar col-md-3 col-xs-12">
            <div class="block block-account">
                <div class="general__title">
                    <h2><span>Thông tin tài khoản</span></h2>
                </div>
                <div class="block-content">
                    <p>Họ và tên: <strong><?php echo $info['fullname'] ?></strong></p>
                    <p>Địa chỉ:  <strong><?php echo $info['address'] ?>
                        <!-- <?php 
                            if($info['address']!='')
                                echo $info['addesss'];
                            else{
                                echo '';
                            }
                        ?> -->
                    </strong></p>
                    <p>Số điện thoại: <strong><?php echo $info['phone'] ?></strong></p>
                    <p>Email: <strong><?php echo $info['email'] ?></strong></p>
                    <p> 

                        <button style="background: #8ac400; border-color: #8ac400" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Chỉnh sửa</button>
                       
                        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                          <div class="modal-dialog" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Chỉnh sửa thông tin</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
<!--                             <?php echo form_open('admin/customer/update/'.$view['']); ?>
 -->
                              <div class="modal-body">
                                <form action="<?php echo base_url() ?>admin/useradmin/update.html" enctype="multipart/form-data" method="POST" accept-charset="utf-8">
                                  <div class="form-group">
                                    <label for="recipient-name" class="col-form-label">Họ và tên: <span class = "maudo">(*)</span></label>
                                     
                                  </div>
                                  <input type="text" class="form-control">
                                  <div class="form-group" >
                                    <label for="message-text" class="col-form-label">Địa chỉ: <span class = "maudo">(*)</span></label>
                                    <textarea class="form-control" id="message-text"></textarea>
                                  </div>
                                  <div class="form-group">
                                    <label for="message-text" class="col-form-label">Số điện thoại: <span class = "maudo">(*)</span></label>
                                    <textarea class="form-control" id="message-text"></textarea>
                                  </div>
                                  <div class="form-group">
                                    <label for="message-text" class="col-form-label">Email: <span class = "maudo">(*)</span></label>
                                    <textarea class="form-control" id="message-text"></textarea>
                                  </div>
                                </form>
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Thoát</button>
                                <button style="background: #8ac400; border-color: #8ac400" type = "submit" class="btn btn-primary btn-sm" >Cập nhật</button>
                              </div>
                            </div>
                          </div>
                        </div>     
                    </p>
                </div>
            </div>
        </aside>
    </div>
</section>