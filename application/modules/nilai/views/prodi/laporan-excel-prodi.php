<?php

header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=laporan-excel.xls"); 

?>

<div class="box-header">
<center>
   <h3 class="box-title" id="judul">Semua Data Evaluasi Kinerja Dosen Prodi<br> Universitas Malikussaleh</h3>     
</center>
</div>
<!-- /.box-header -->
<div class="box-body">
                            <?= $this->session->flashdata('message1'); ?>
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>No</th>
                                            <th>NIDN</th>
                                            <th>Nama Dosen</th>
                                            <th>Matakuliah</th>
                                            <th>Nilai</th>
                                            <th>Bobot</th>
                                            <th>Semester</th>
                                            <th>TA</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php //var_dump($all_prdin); 
                                        ?>
                                        <?php
                                        $no = 0;
                                        foreach ($rekap_prodi as $nl) :
                                            $no++ ?>
                                        <tr>
                                            <td><?= $no ?></td>
                                            <td><?= $nl->NIDN; ?></td>
                                            <td><?= $nl->nama_dosen; ?></td>
                                            <td><?= $nl->nama_matakuliah; ?></td>
                                            <?php $kd_prodi = $this->session->userdata('kd_prodi');
                                                //$pert =  $this->db->count_all_results('pertanyaan');

                                                foreach ($nidn as $jmlh) :
                                                    $nilaiCalc = $nl->nilai / $jmlh->total;
                                                endforeach;
                                                ?>
                                            <td><?= round($nilaiCalc, 2); ?></td>
                                            <td><?php if ($nilaiCalc >= 3.60) {
                                                        echo 'A';
                                                    } elseif ($nilaiCalc >= 3.00 && $nilaiCalc >= 3.59) {
                                                        echo 'B';
                                                    } elseif ($nilaiCalc >= 2.40 && $nilaiCalc >= 2.99) {
                                                        echo 'C';
                                                    } else {
                                                        echo 'D';
                                                    }

                                                    ?>
                                            </td>
                                            <td><?= $nl->smester; ?></td>
                                            <td><?= $nl->tahun_ajaran; ?></td>
                                        </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="row tndtgn">
                            <div class="col-md-8"></div>
                            <div class="col-md-4">
                                <center>
                                    Lhokseumawe, <?php echo date('d-m-Y'); ?>
                                    <br>
                                    <br>
                                    <br>
                                    <br>
                                    Ka Prodi <?= $user_prodi['nama_prodi']; ?>
                                    <br>
                                    <br>
                                </center>
                            </div>
                        </div>
                    </div>
                    <!-- /.box -->