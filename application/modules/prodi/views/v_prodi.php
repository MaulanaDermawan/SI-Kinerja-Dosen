<div class="content-wrapper">
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box">
                        <div class="box-header">
                            <a href="<?= base_url('tambah-prodi') ?>" class="badge progress-bar-primary">Tambah Data</a>
                            <br>
                            <center>
                                <h3 class="box-title" id="judul">Daftar Prodi Universitas Malikussaleh Lhokseumawe</h3>
                            </center>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <?= $this->session->flashdata('message1'); ?>
                            <div class="table-responsive">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>Kode Fakultas</th>
                                            <th>Nama Fakultas</th>
                                            <th>Kode Prodi</th>
                                            <th>Nama Prodi</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php //var_dump($all_prdin); 
                                        ?>
                                        <?php
                                        $no = 0;
                                        foreach ($prodi as $prd) :
                                            $no++ ?>
                                        <tr>
                                            <td><?= $no ?></td>
                                            <td><?= $prd->kd_fakultas; ?></td>
                                            <td><?= $prd->nama_fakultas; ?></td>
                                            <td><?= $prd->kd_prodi; ?></td>
                                            <td><?= $prd->nama_prodi; ?></td>
                                            <td>
                                                <a href="<?= base_url('edit-prodi/' . $prd->kd_prodi) ?>"
                                                    class="badge progress-bar-primary">Edit</a>
                                                <a href="<?= base_url('prodi/Prodi/delete_prodi/' . $prd->kd_prodi); ?>"
                                                    class="badge progress-bar-danger"
                                                    onclick="return confirm('Yakin..?');">Hapus</a>
                                            </td>
                                        </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>