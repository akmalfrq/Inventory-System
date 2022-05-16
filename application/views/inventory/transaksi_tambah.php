<div class="result" data-hasil="<?php echo $this->session->flashdata('h'); ?>" data-tindakan="<?php echo $this->session->flashdata('t'); ?>" data-jenis="barang"></div>

<div class="container-fluid">
  <div class="row justify-content-center">
    <!-- left column -->
    <div class="col-md-8">
      <!-- Horizontal Form -->
      <div class="card card-outline card-primary">
        <div class="card-header">
          <h3 class="card-title font-weight-bold text-primary">Form Transaksi Barang Masuk<h3>
        </div>
        <!-- /.card-header -->
        <!-- form start -->
          <form class="form-horizontal" method="post" action="<?php echo base_url($this->uri->segment(1)); ?>">
            <div class="card-body">
              
              <div class="form-group row">
                <label for="barang" class="col-sm-3 col-form-label text-right">Barang</label>
                <div class="col-sm-9 input-group">
                  <select class="form-control" id="barang" name="barang">
                    <option value="" selected>--Pilih Barang--</option>
                    <?php foreach ($barang as $b) : ?>
                      <option value="<?php echo $b['kd_nama'] ?>" ><?php echo $b['nama']; ?></option>
                    <?php endforeach; ?>
                  </select>
                  <span class="input-group-append">
                    <a class="btn btn-primary" href="<?php echo base_url('nama') ?>">
                      <i class="fas fa-plus"></i></a>
                  </span>
                </div>
              </div>
              <div class="form-group row">
                <label for="kategori" class="col-sm-3 col-form-label text-right">Ruangan</label>
                <div class="col-sm-9 input-group">
                  <select class="form-control" id="ruangan" name="ruangan">
                    <option value="" selected>--Pilih ruangan--</option>
                    <?php foreach ($ruangan as $r) : ?>
                      <option value="<?php echo $r['kd_ruang'] ?>" ><?php echo $r['ruang']; ?></option>
                    <?php endforeach; ?>
                  </select> 
                  <span class="input-group-append">
                    <a class="btn btn-primary" href="<?php echo base_url('ruangan') ?>">
                      <i class="fas fa-plus"></i></a>
                  </span>
                </div>
              </div>
              <div class="form-group row">
                <label for="jumlah" class="col-sm-3 col-form-label text-right">Jumlah</label>
                <div class="col-sm-9 input-group">
                  <input type="number" class="form-control" min="1" name="jumlah" id="jumlah" placeholder="Jumlah Barang" value="<?php echo set_value('jumlah'); ?>" autocomplete="off">
                </div>
              </div>
              <div class="form-group row">
                <label for="kondisi" class="col-sm-3 col-form-label text-right">Kondisi Barang</label>
                <div class="col-sm-9 input-group">
                  <select class="form-control" id="kondisi" name="kondisi">
                    <option value="" selected>--Kondisi Barang--</option>
                    <?php foreach ($kondisi as $k) : ?>
                      <option value="<?php echo $k['kd_kondisi'] ?>" ><?php echo $k['kondisi']; ?></option>
                    <?php endforeach; ?>
                  </select> 
                </div>
              </div>
              <div class="form-group row">
                <div class="col-md-9 offset-md-3">
                  <button type="submit" class="btn btn-primary">Proses</button>
                  <button type="reset" class="btn btn-default">Reset</button>
                </div>
              </div>
              
            </div>
            <!-- /.card-body -->
            <div class="card-footer ">
              
            </div>
            <!-- /.card-footer -->
          </form>

      </div>
      <!-- /.card -->

    </div>
  </div>
</div>