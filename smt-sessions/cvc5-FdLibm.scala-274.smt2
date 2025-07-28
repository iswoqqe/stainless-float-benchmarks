; Options: -q --produce-models --incremental --print-success --lang smt2.6 --arrays-exp
(set-logic ALL)

(declare-fun start!1769 () Bool)

(assert start!1769)

(declare-fun b!9405 () Bool)

(declare-fun res!7755 () Bool)

(declare-fun e!4970 () Bool)

(assert (=> b!9405 (=> (not res!7755) (not e!4970))))

(declare-datatypes ((array!674 0))(
  ( (array!675 (arr!292 (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (size!292 (_ BitVec 32))) )
))
(declare-fun f!79 () array!674)

(declare-fun i!190 () (_ BitVec 32))

(declare-fun Q!0 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!9405 (= res!7755 (Q!0 (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000011))))))

(declare-fun b!9406 () Bool)

(declare-fun res!7758 () Bool)

(assert (=> b!9406 (=> (not res!7758) (not e!4970))))

(declare-fun q!51 () array!674)

(declare-fun xx!50 () array!674)

(declare-fun P!3 ((_ FloatingPoint 11 53)) Bool)

(assert (=> b!9406 (= res!7758 (P!3 (select (store (arr!292 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000000) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000001) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000010) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000011) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000100) (select (arr!292 f!79) i!190)))) i!190)))))

(declare-fun b!9407 () Bool)

(declare-fun res!7756 () Bool)

(declare-fun e!4974 () Bool)

(assert (=> b!9407 (=> (not res!7756) (not e!4974))))

(declare-fun xxInv!0 (array!674) Bool)

(assert (=> b!9407 (= res!7756 (xxInv!0 xx!50))))

(declare-fun b!9408 () Bool)

(declare-fun e!4975 () Bool)

(assert (=> b!9408 (= e!4974 e!4975)))

(declare-fun res!7757 () Bool)

(assert (=> b!9408 (=> (not res!7757) (not e!4975))))

(declare-fun e!19 () (_ BitVec 32))

(declare-fun lt!4541 () (_ BitVec 32))

(assert (=> b!9408 (= res!7757 (= (bvsub e!19 (bvmul #b00000000000000000000000000011000 (bvadd (ite (bvslt lt!4541 #b00000000000000000000000000000000) #b00000000000000000000000000000000 lt!4541) #b00000000000000000000000000000001))) #b00000000000000000000000000000000))))

(assert (=> b!9408 (= lt!4541 (bvsdiv (bvsub e!19 #b00000000000000000000000000000011) #b00000000000000000000000000011000))))

(declare-fun b!9409 () Bool)

(declare-fun res!7751 () Bool)

(assert (=> b!9409 (=> (not res!7751) (not e!4970))))

(assert (=> b!9409 (= res!7751 (Q!0 (select (arr!292 f!79) i!190)))))

(declare-fun b!9410 () Bool)

(assert (=> b!9410 (= e!4975 e!4970)))

(declare-fun res!7753 () Bool)

(assert (=> b!9410 (=> (not res!7753) (not e!4970))))

(declare-fun jz!36 () (_ BitVec 32))

(assert (=> b!9410 (= res!7753 (and (bvsle #b00000000000000000000000000000000 i!190) (bvsle i!190 (bvadd jz!36 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!670 0))(
  ( (Unit!671) )
))
(declare-datatypes ((tuple3!178 0))(
  ( (tuple3!179 (_1!227 Unit!670) (_2!227 (_ BitVec 32)) (_3!189 array!674)) )
))
(declare-fun lt!4537 () tuple3!178)

(declare-fun e!4973 () tuple3!178)

(assert (=> b!9410 (= lt!4537 e!4973)))

(declare-fun c!1036 () Bool)

(declare-fun lt!4539 () (_ BitVec 32))

(assert (=> b!9410 (= c!1036 (bvsle lt!4539 (bvadd (bvsub (size!292 xx!50) #b00000000000000000000000000000001) jz!36)))))

(assert (=> b!9410 (= lt!4539 #b00000000000000000000000000000000)))

(declare-fun lt!4538 () array!674)

(assert (=> b!9410 (= lt!4538 (array!675 ((as const (Array (_ BitVec 32) (_ FloatingPoint 11 53))) (fp #b0 #b00000000000 #b0000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000010100))))

(declare-fun b!9411 () Bool)

(declare-fun res!7749 () Bool)

(assert (=> b!9411 (=> (not res!7749) (not e!4970))))

(assert (=> b!9411 (= res!7749 (Q!0 (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000001))))))

(declare-fun b!9412 () Bool)

(declare-fun res!7752 () Bool)

(assert (=> b!9412 (=> (not res!7752) (not e!4970))))

(assert (=> b!9412 (= res!7752 (Q!0 (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000010))))))

(declare-fun b!9413 () Bool)

(declare-fun timesTwoOverPiWhile!0 ((_ BitVec 32) (_ BitVec 32) array!674 (_ BitVec 32) array!674) tuple3!178)

(assert (=> b!9413 (= e!4973 (timesTwoOverPiWhile!0 e!19 jz!36 xx!50 lt!4539 lt!4538))))

(declare-fun b!9414 () Bool)

(declare-fun e!4972 () Bool)

(assert (=> b!9414 (= e!4972 (and (= (bvand jz!36 #b10000000000000000000000000000000) #b00000000000000000000000000000000) (not (= (bvand jz!36 #b10000000000000000000000000000000) (bvand (bvadd jz!36 #b00000000000000000000000000000001) #b10000000000000000000000000000000)))))))

(declare-fun b!9415 () Bool)

(declare-fun res!7750 () Bool)

(assert (=> b!9415 (=> (not res!7750) (not e!4970))))

(assert (=> b!9415 (= res!7750 (bvsle i!190 jz!36))))

(declare-fun b!9416 () Bool)

(declare-fun res!7748 () Bool)

(assert (=> b!9416 (=> (not res!7748) (not e!4970))))

(declare-fun fInv!0 (array!674) Bool)

(assert (=> b!9416 (= res!7748 (fInv!0 f!79))))

(declare-fun res!7760 () Bool)

(assert (=> start!1769 (=> (not res!7760) (not e!4974))))

(assert (=> start!1769 (= res!7760 (and (bvsle #b00000000000000000000000000000000 jz!36) (bvsle jz!36 #b00000000000000000000000000001111) (bvsle #b00000000000000000000000000011000 e!19) (bvsle e!19 #b00000000000000000000001111110000) (= (bvsrem e!19 #b00000000000000000000000000011000) #b00000000000000000000000000000000)))))

(assert (=> start!1769 e!4974))

(declare-fun array_inv!242 (array!674) Bool)

(assert (=> start!1769 (array_inv!242 f!79)))

(assert (=> start!1769 (array_inv!242 q!51)))

(assert (=> start!1769 true))

(assert (=> start!1769 (array_inv!242 xx!50)))

(declare-fun b!9417 () Bool)

(declare-fun res!7747 () Bool)

(assert (=> b!9417 (=> (not res!7747) (not e!4972))))

(declare-fun lt!4540 () (_ BitVec 32))

(declare-datatypes ((tuple4!200 0))(
  ( (tuple4!201 (_1!228 Unit!670) (_2!228 (_ BitVec 32)) (_3!190 array!674) (_4!100 array!674)) )
))
(declare-fun timesTwoOverPiWhile!1 ((_ BitVec 32) (_ BitVec 32) array!674 (_ BitVec 32) array!674 array!674) tuple4!200)

(assert (=> b!9417 (= res!7747 (bvsle #b00000000000000000000000000000000 (_2!228 (timesTwoOverPiWhile!1 e!19 jz!36 xx!50 lt!4540 (array!675 (store (arr!292 q!51) i!190 (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000000) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000100))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000001) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000011)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000010) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000010)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000011) (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000001)))) (fp.mul roundNearestTiesToEven (select (arr!292 xx!50) #b00000000000000000000000000000100) (select (arr!292 f!79) i!190)))) (size!292 q!51)) f!79))))))

(declare-fun b!9418 () Bool)

(declare-fun Unit!672 () Unit!670)

(assert (=> b!9418 (= e!4973 (tuple3!179 Unit!672 lt!4539 lt!4538))))

(declare-fun b!9419 () Bool)

(declare-fun res!7754 () Bool)

(assert (=> b!9419 (=> (not res!7754) (not e!4970))))

(declare-fun qInv!0 (array!674) Bool)

(assert (=> b!9419 (= res!7754 (qInv!0 q!51))))

(declare-fun b!9420 () Bool)

(assert (=> b!9420 (= e!4970 e!4972)))

(declare-fun res!7759 () Bool)

(assert (=> b!9420 (=> (not res!7759) (not e!4972))))

(assert (=> b!9420 (= res!7759 (bvsle lt!4540 jz!36))))

(assert (=> b!9420 (= lt!4540 (bvadd i!190 #b00000000000000000000000000000001))))

(declare-fun b!9421 () Bool)

(declare-fun res!7746 () Bool)

(assert (=> b!9421 (=> (not res!7746) (not e!4970))))

(assert (=> b!9421 (= res!7746 (Q!0 (select (arr!292 f!79) (bvadd i!190 #b00000000000000000000000000000100))))))

(assert (= (and start!1769 res!7760) b!9407))

(assert (= (and b!9407 res!7756) b!9408))

(assert (= (and b!9408 res!7757) b!9410))

(assert (= (and b!9410 c!1036) b!9413))

(assert (= (and b!9410 (not c!1036)) b!9418))

(assert (= (and b!9410 res!7753) b!9416))

(assert (= (and b!9416 res!7748) b!9419))

(assert (= (and b!9419 res!7754) b!9415))

(assert (= (and b!9415 res!7750) b!9421))

(assert (= (and b!9421 res!7746) b!9405))

(assert (= (and b!9405 res!7755) b!9412))

(assert (= (and b!9412 res!7752) b!9411))

(assert (= (and b!9411 res!7749) b!9409))

(assert (= (and b!9409 res!7751) b!9406))

(assert (= (and b!9406 res!7758) b!9420))

(assert (= (and b!9420 res!7759) b!9417))

(assert (= (and b!9417 res!7747) b!9414))

(declare-fun m!16861 () Bool)

(assert (=> b!9412 m!16861))

(assert (=> b!9412 m!16861))

(declare-fun m!16863 () Bool)

(assert (=> b!9412 m!16863))

(declare-fun m!16865 () Bool)

(assert (=> start!1769 m!16865))

(declare-fun m!16867 () Bool)

(assert (=> start!1769 m!16867))

(declare-fun m!16869 () Bool)

(assert (=> start!1769 m!16869))

(declare-fun m!16871 () Bool)

(assert (=> b!9411 m!16871))

(assert (=> b!9411 m!16871))

(declare-fun m!16873 () Bool)

(assert (=> b!9411 m!16873))

(declare-fun m!16875 () Bool)

(assert (=> b!9405 m!16875))

(assert (=> b!9405 m!16875))

(declare-fun m!16877 () Bool)

(assert (=> b!9405 m!16877))

(declare-fun m!16879 () Bool)

(assert (=> b!9419 m!16879))

(declare-fun m!16881 () Bool)

(assert (=> b!9409 m!16881))

(assert (=> b!9409 m!16881))

(declare-fun m!16883 () Bool)

(assert (=> b!9409 m!16883))

(declare-fun m!16885 () Bool)

(assert (=> b!9406 m!16885))

(assert (=> b!9406 m!16875))

(assert (=> b!9406 m!16861))

(assert (=> b!9406 m!16871))

(declare-fun m!16887 () Bool)

(assert (=> b!9406 m!16887))

(declare-fun m!16889 () Bool)

(assert (=> b!9406 m!16889))

(declare-fun m!16891 () Bool)

(assert (=> b!9406 m!16891))

(declare-fun m!16893 () Bool)

(assert (=> b!9406 m!16893))

(assert (=> b!9406 m!16889))

(declare-fun m!16895 () Bool)

(assert (=> b!9406 m!16895))

(assert (=> b!9406 m!16881))

(declare-fun m!16897 () Bool)

(assert (=> b!9406 m!16897))

(declare-fun m!16899 () Bool)

(assert (=> b!9406 m!16899))

(declare-fun m!16901 () Bool)

(assert (=> b!9406 m!16901))

(declare-fun m!16903 () Bool)

(assert (=> b!9413 m!16903))

(assert (=> b!9417 m!16885))

(assert (=> b!9417 m!16875))

(assert (=> b!9417 m!16861))

(assert (=> b!9417 m!16871))

(assert (=> b!9417 m!16887))

(declare-fun m!16905 () Bool)

(assert (=> b!9417 m!16905))

(assert (=> b!9417 m!16893))

(assert (=> b!9417 m!16895))

(assert (=> b!9417 m!16881))

(assert (=> b!9417 m!16897))

(assert (=> b!9417 m!16899))

(assert (=> b!9417 m!16901))

(assert (=> b!9421 m!16885))

(assert (=> b!9421 m!16885))

(declare-fun m!16907 () Bool)

(assert (=> b!9421 m!16907))

(declare-fun m!16909 () Bool)

(assert (=> b!9407 m!16909))

(declare-fun m!16911 () Bool)

(assert (=> b!9416 m!16911))

(push 1)

(assert (not b!9407))

(assert (not b!9416))

(assert (not b!9411))

(assert (not b!9421))

(assert (not b!9412))

(assert (not b!9413))

(assert (not b!9406))

(assert (not b!9419))

(assert (not b!9405))

(assert (not b!9417))

(assert (not start!1769))

(assert (not b!9409))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

