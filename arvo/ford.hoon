!:::::
::  ::  %ford, new execution control
!?  164
::::
|=  pit/vase
=>  =~
::  structures
|%
++  gift  gift-ford                                     ::  out result <-$
++  heel  path                                          ::  functional ending
++  kiss  kiss-ford                                     ::  in request ->$
++  move  {p/duct q/(wind note gift)}                   ::  local move
++  note                                                ::  out request $->
          $%  $:  $c                                    ::  to %clay
          $%  {$warp p/sock q/riff}                     ::
          ==  ==                                        ::
              $:  $f                                    ::  to %ford
          $%  {$exec p/@p q/(unit bilk)}                ::
          ==  ==                                        ::
              $:  $g                                    ::  to %gall
          $%  {$deal p/sock q/cush}                     ::
          ==  ==  ==                                    ::
++  sign                                                ::  in result $<-
          $%  $:  $c                                    ::  by %clay
          $%  {$writ p/riot}                            ::
          ==  ==                                        ::
              $:  $f                                    ::  by %ford
          $%  {$made p/@uvH q/gage}                     ::
          ==  ==                                        ::
              $:  $g                                    ::  by %gall
          $%  {$unto p/cuft}                            ::
          ==  ==  ==                                    ::
--                                                      ::
|%                                                      ::  structures
++  axle                                                ::  all %ford state
  $:  $3                                                ::  version for update
      pol/(map ship baby)                               ::
  ==                                                    ::
++  baby                                                ::  state by ship
  $:  tad/{p/@ud q/(map @ud task)}                      ::  tasks by number
      dym/(map duct @ud)                                ::  duct to task number
      deh/(map @uvH deps)                               ::  depends by hash
      gaf/(jug dent dent)                               ::  part to product
      jav/(map * calx)                                  ::  cache
  ==                                                    ::
++  bolt                                                ::  gonadic edge
  |*  a/mold                                            ::  product clam
  $:  p/cafe                                            ::  cache
    $=  q                                               ::
      $%  {$0 p/(set dent) q/a}                         ::  depends+product
          {$1 p/(set {van/vane ren/care bem/beam tan/tang})}  ::  blocks
          {$2 p/(set dent) q/tang}                      ::  depends+error
      ==                                                ::
  ==                                                    ::
::                                                      ::
++  burg                                                ::  gonadic rule
  |*  {a/mold b/mold}                                   ::  from and to
  $-({c/cafe d/a} (bolt b))                             ::
::                                                      ::
++  cafe                                                ::  live cache
  $:  p/(set calx)                                      ::  used
      q/(map * calx)                                    ::  cache
      r/(map @uvH deps)                                 ::  deps
      s/(jug dent dent)                                 ::  dep graph
  ==                                                    ::
::                                                      ::
++  calm                                                ::  cache metadata
  $:  dep/(set dent)                                    ::  dependencies
  ==                                                    ::
++  calx                                                ::  concrete cache line
  $%  {$hood p/calm q/(pair beam cage) r/hood}          ::  compile
      {$boil p/calm q/(trel coin beam beam) r/vase}     ::  execute
      {$load p/calm q/(pair mark beam) r/(unit vase)}   ::  load
      {$path p/calm q/beam r/(unit beam)}               ::  -to/ transformation
      {$slit p/calm q/{p/span q/span} r/span}           ::  slam type
      {$slim p/calm q/{p/span q/twig} r/(pair span nock)}  ::  mint
      {$slap p/calm q/{p/vase q/twig} r/vase}           ::  compute
      {$slam p/calm q/{p/vase q/vase} r/vase}           ::  compute
  ==                                                    ::
++  deps                                                ::  depend state
  %+  pair  (set dent)
  $%  {$init $~}                                        ::  given out
      {$sent dux/(set duct)}                            ::  listener exists
      {$done $~}                                        ::  change seen
  ==                                                    ::
++  dent                                                ::  individual dep
  $%  {$beam bem/beam ren/care}
      {$bake bem/beam mar/mark arg/coin}
  ==
++  task                                                ::  problem in progress
  $:  nah/duct                                          ::  cause
      {bek/beak kas/silk}                               ::  problem
      keg/(map (pair term beam) cage)                   ::  block results
      kig/(set (trel vane care beam))                   ::  blocks
  ==                                                    ::
++  gagl  (list (pair gage gage))                       ::
++  vane  ?($a $b $c $d $e $f $g)                       ::
--                                                      ::
|%                                                      ::  caching
++  ca                                                  ::
  |%
  ++  val                                               ::  reduce calx
    |*  sem/@tas                                        ::  a typesystem hack
    |=  cax/calx
    ?+  sem  !!
      $hood  ?>(?=($hood -.cax) r.cax)
      $boil  ?>(?=($boil -.cax) r.cax)
      $load  ?>(?=($load -.cax) r.cax)
      $path  ?>(?=($path -.cax) r.cax)
      $slap  ?>(?=($slap -.cax) r.cax)
      $slam  ?>(?=($slam -.cax) r.cax)
      $slim  ?>(?=($slim -.cax) r.cax)
      $slit  ?>(?=($slit -.cax) r.cax)
    ==
  ::
  ++  get                                               ::  cache lookup
    |=  a/cafe                                          ::
    |=  {b/@tas c/*}                                    ::
    ^-  {(unit calx) cafe}                              ::
    =+  d=(~(get by q.a) [b c])                         ::  calx key is [p q]
    ?~  d  [~ a]                                        ::
    [d a(p (~(put in p.a) u.d))]                        ::
  ::                                                    ::
  ++  put                                               ::  cache install
    |=  {a/cafe b/calx}                                 ::
    ^-  cafe                                            ::
    a(q (~(put by q.a) [-.b q.b] b))                    ::
  --
::
++  pin-dephash
  |=  {sep/(set dent) deh/(map @uvH deps)}
  ^+  [*@uvH deh]
  =.  sep  (de-dup-subdirs sep)
  ?~  sep  [0v0 deh]
  =+  hap=(sham sep)
  ?:  (~(has by deh) hap)
    [hap deh]
  [hap (~(put by deh) hap [sep %init ~])]
::
++  de-dup-subdirs
  |=  sep/(set dent)  ^+  sep
  %-  silt
  %+  skim  (~(tap in sep))
  |=  den/dent  ^-  ?
  ?.  ?=($beam -.den)  &
  ?~  s.bem.den  &
  =/  above  den(s.bem t.s.bem.den)
  &(!(~(has in sep) above) $(den above))
::
++  bo                                                  ::  bolt operations
  |%
  ++  to-gage                                           ::  wrap vase
    |=  a/(bolt vase)  ^-  (bolt gage)
    (tug a (with |=(a/vase [%& %noun a])))
  ::
  ++  to-cage                                           ::  unwrap gage to cage
    |=  gag/(bolt gage)  ^-  (bolt cage)
    %+  tug  gag
    |=  {a/cafe b/gage}
    ?-  -.b
      $tabl  (err:bo a >%bad-marc< ~)
      $|     (err:bo a p.b)
      $&     (new:bo a p.b)
    ==
  ::
  ++  catch-error
    |=  a/(bolt gage)  ^-  (bolt gage)                  ::  TODO: (each * tang)
    ?.  ?=($2 -.q.a)  a
    [p.a [%0 p.q.a `gage`[%| q.q.a]]]
  ::
  ++  new  |*  {a/cafe b/*}                             ::  bolt from data
           [p=`cafe`a q=[%0 p=*(set dent) q=b]]
  ::
  ++  err  |=  {a/cafe b/tang}                          ::  bolt from error
           [p=a q=[%2 p=*(set dent) q=b]]
  ::
  ++  add-dep
    |*  {a/dent b/(bolt)}
    ?:  ?=($1 -.q.b)  b
    =.  p.q.b  (~(put in p.q.b) a)
    b
  ::
  ++  ren-beamcare
    |=({a/beam b/care} `path`[(crip %c b ~) (tope a)])
  ::
  ++  ren-dent
    |=  a/dent  ::^-  $^({path mark @p} path)
    ?-  -.a
      $beam  [%| (ren-beamcare +.a)]
      $bake  [%& (tope bem.a) mar.a `@p`(mug arg.a)]
    ==
  ::
  ++  ren-jug
    |=  a/(jug dent dent)
    %-  malt  ^-  (list (pair ren-dent (set ren-dent)))
    %+  turn  (~(tap by a))
    |=  {b/dent c/(set dent)}
    [(ren-dent b) (silt (turn (~(tap in c)) ren-dent))]
  ::
  ++  under-dep                                         ::  link deps with
    |*  {a/dent b/(bolt)}                               ::  a as current dep
    ?:  ?=($1 -.q.b)  b                                 ::  and links a to
    ::  =;  ret
    ::    ~&  :*  %under-dep
    ::            und=(ren-dent a)
    ::            old=~(wyt by s.p.b)
    ::            new=~(wyt by s.p.ret)
    ::        ==
    ::    ret
    =:  p.q.b  (sy a ~)                                 ::  s.p.b so a depends
        s.p.b  %+  roll  (~(tap in p.q.b))              ::  on all deps in s.p.b
               =+  [k=*dent s=s.p.b]
               |.
               (~(put ju s) k a)
      ==
    b
  ::
  ++  with  |*  a/_|=(* +<)                             ::  bolt lift (fmap)
            |*  {cafe _,.+<.a}
            (new +<- (a +<+))
  ::
  ::+|
  ::
  ++  pin
    |*  hoc/(bolt)  ^+  [*@uvH hoc]
    ?:  ?=($1 -.q.hoc)  [*@uvH hoc]
    =^  dep  r.p.hoc  (pin-dephash [p.q r.p]:hoc)
    [dep hoc]
  ::
  ++  with-cache                                        ::  cache a result
    |*  sem/@tas                                        ::  calx type
    |*  {hoc/(bolt) fun/(burg)}
    ?-    -.q.hoc
        $2  hoc
        $1  hoc
        $0
      =^  cux  p.hoc  ((get:ca p.hoc) sem q.q.hoc)
      ?^  cux
        [p=p.hoc q=[%0 p=dep.p.u.cux q=((val:ca sem) u.cux)]]
      =+  nuf=(tug hoc fun)
      ?-    -.q.nuf
          $2  nuf
          $1  nuf
          $0
        :: ~&  :-  %with-cache-new
        ::     ?+  sem  `term`sem
        ::       $hood  [%hood (tope &1.q.q.hoc)]
        ::       $bake  [%bake `mark`&1.q.q.hoc (tope |2.q.q.hoc)]
        ::     ==
        :-  p=(put:ca p.nuf `calx`[sem `calm`p.q.nuf q.q.hoc q.q.nuf])
        q=q.nuf
      ==
    ==
  ::
  ++  cell  ::                                          ::  bolt together
    |*  {hoc/(bolt) fun/(burg)}
    ?-  -.q.hoc
      $0  =+  nuf=(fun p.hoc +<+.fun)
          :-  p=p.nuf
          ^=  q
          ?-  -.q.nuf
            $0  [%0 p=(~(uni in p.q.hoc) p.q.nuf) q=[q.q.hoc q.q.nuf]]
            $1  q.nuf
            $2  q.nuf
          ==
      $1  =+  nuf=(fun p.hoc +<+.fun)
          :-  p=p.nuf
          ^=  q
          ?-  -.q.nuf
            $0  q.hoc
            $1  [%1 p=(~(uni in p.q.nuf) p.q.hoc)]
            $2  q.nuf
          ==
      $2  hoc
    ==
  ::
  ++  admit                                             ::  error caption
    |*  {cyt/$@(term (trap tank)) hoc/(bolt)}
    ?.  ?=($2 -.q.hoc)  hoc
    [p=p.hoc q=[%2 p=p.q.hoc q=[?^(cyt *cyt >`@tas`cyt<) q.q.hoc]]]
  ::
  ++  tug                                               ::  bolt along
    |*  {hoc/(bolt) fun/(burg)}
    ?-  -.q.hoc
      $1  hoc
      $2  hoc
      $0  =+  nuf=(fun p.hoc q.q.hoc)
          :-  p=p.nuf
          ^=  q
          ?-  -.q.nuf
            $1  q.nuf
            $2  [%2 p=(~(uni in `_p.q.nuf`p.q.hoc) p.q.nuf) q=q.q.nuf]
            $0  [%0 p=(~(uni in `_p.q.nuf`p.q.hoc) p.q.nuf) q=q.q.nuf]
    ==    ==
  ::
  ++  catch                                             ::  bolt fallback
    |*  {hoc/(bolt) fun/$-(cafe (bolt))}                ::  TODO: {cafe tang}
    ?-  -.q.hoc                                         ::  & use ++catch-error
      $1  hoc
      $0  hoc
      $2  =+  nuf=(fun p.hoc)
          :-  p=p.nuf
          ^=  q
          ?-  -.q.nuf
            $1  q.nuf
            $0  [%0 p=(~(uni in `_p.q.nuf`p.q.hoc) p.q.nuf) q=q.q.nuf]
            $2  =.  q.q.nuf  (welp q.q.nuf q.q.hoc)
                [%2 p=(~(uni in `_p.q.nuf`p.q.hoc) p.q.nuf) q=q.q.nuf]
    ==    ==
  ::
  ++  from-toon                                         ::  toon to bolt
    |=  cof/cafe
    |*  {ton/toon fun/gate}                             ::  TODO use tug:bo
    :-  p=cof
    ^=  q
    ?-  -.ton
      $2  [%2 p=*(set dent) q=p.ton]
      $0  [%0 p=*(set dent) q=(fun p.ton)]
      $1  ::  ~&  [%from-toon:bo-need ((list path) p.ton)]
          =-  ?-  -.faw                                 ::TODO =;
                $&  :-  %1
                    ^=  p
                    %-  silt
                    %+  turn  p.faw
                    |=(a/{vane care beam} [-.a +<.a +>.a *tang])
                $|  [%2 p=*(set dent) q=p.faw]
              ==
          ^=  faw
          |-  ^-  (each (list (trel vane care beam)) tang)
          ?~  p.ton  [%& ~]
          =+  nex=$(p.ton t.p.ton)
          =+  err=|=(a/tape [%| leaf+a ?:(?=($& -.nex) ~ p.nex)])
          =+  pax=(path i.p.ton)
          ?~  pax  (err "blocking empty")
          =+  ren=((soft care) (rsh 3 1 i.pax))
          ?~  ren
            (err "blocking not care: {<i.pax>}")
          =+  zis=(tome t.pax)
          ?~  zis
            (err "blocking not beam: {<t.pax>}")
          ?:  ?=($g (end 3 1 i.pax))
            ?-  -.nex
              $&  [%& [%g u.ren u.zis] p.nex]
              $|  nex
            ==
          ?:  ?=($c (end 3 1 i.pax))
            ?-  -.nex
              $&  [%& [%c u.ren u.zis] p.nex]
              $|  nex
            ==
          (err "blocking bad vane")
    ==
  ::
  ++  from-each                                         ::  each to bolt
    |=  cof/cafe                                        ::  move to top section
    |*  {tod/(each * tang) fun/gate}
    %+  (from-toon cof)
      ?-  -.tod
        $&  [%0 p=p.tod]
        $|  [%2 p=p.tod]
      ==
    fun
  ::
  ++  some-in-map
    |*  fun/(burg knot (unit))
    =+  res=_(need [?+(-.q !! $0 q.q)]:*fun)
    =+  marv=(map knot res)
    |=  {cof/cafe sud/(map knot $~)}  ^-  (bolt marv)
    ?~  sud  (new cof ~)
    %.  [cof sud]
    ;~  tug
      ;~  cell
        |=({cof/cafe _sud} ^$(cof cof, sud l))
        |=({cof/cafe _sud} ^$(cof cof, sud r))
        |=  {cof/cafe {dir/@ta $~} ^}
        %+  tug  (fun cof dir)
        (with (lift |*(* [dir +<])))
      ==
      %-  with
      |=  {lam/marv ram/marv nod/(unit {knot res})}
      ?^(nod [u.nod lam ram] (~(uni by lam) ram))
    ==
  --
::
++  fair                                                ::  hood parsing rule
  |=  bem/beam
  ?>  ?=({$ud $0} r.bem)          ::  XX sentinel
  =+  vez=(vang & (tope bem))
  =<  hood
  |%
  ++  case                                              ::  %clay revision
    %+  sear
      |=  a/coin  ^-  (unit ^case)
      ?.  ?=({$$ ^case} a)  ~
      [~ u=p.a]
    nuck:so
  ::
  ++  mota  ;~(pfix pat mota:vez)                       ::  atom odor
  ++  hath  (sear plex (stag %conl poor)):vez           ::  hood path
  ++  have  (sear tome ;~(pfix fas hath))               ::  hood beam
  ++  hith                                              ::  static path
    =>  vez
    (sear plex (stag %conl (more fas hasp)))
  ::
  ++  hive                                              ::  late-bound path
    ;~  pfix  fas
      %+  cook  |=(a/hops a)
      =>  vez
      ;~  plug
        (stag ~ gash)
        ;~(pose (stag ~ ;~(pfix cen porc)) (easy ~))
      ==
    ==
  ::
  ++  hood
    %+  ifix  [gay gay]
    ;~  plug
      ;~  pose
        (ifix [;~(plug fas wut gap) gap] dem)
        (easy zuse)
      ==
    ::
      ;~  pose
        (ifix [;~(plug fas hep gap) gap] (most ;~(plug com gaw) hoof))
        (easy ~)
      ==
    ::
      ;~  pose
        (ifix [;~(plug fas lus gap) gap] (most ;~(plug com gaw) hoof))
        (easy ~)
      ==
    ::
      (star ;~(sfix horn gap))
      (most gap hoop)
    ==
  ::
  ++  hoof
    %+  cook  |=(a/^hoof a)
    ;~  plug
      sym                                               ::  file or
      %-  punt                                          ::  file/case/~ship
      ;~  plug
        ;~(pfix fas case)
        ;~(pfix fas sig fed:ag)
      ==
    ==
  ::
  ++  hoop
    ;~  pose
      (stag %| ;~(pfix ;~(plug fas fas gap) have))
      (stag %& tall:vez)
    ==
  ::
  ++  horn                                              ::  horn parser
    =<  apex
    =|  tol/?                                           ::  allow tall form
    |%
    ++  apex
      %+  knee  *^horn  |.  ~+
      ;~  pfix  fas
        ;~  pose
          (stag %fssg ;~(pfix sig twig:read))           ::  /~  twig by hand
          (stag %fsbc ;~(pfix buc twig:read))           ::  /$  extra arguments
          (stag %fsbr ;~(pfix bar alts:read))           ::  /|  or (options)
          (stag %fshx ;~(pfix hax horn:read))           ::  /#  insert dephash
          (stag %fsts ;~(pfix tis name:read))           ::  /=  apply face
          (stag %fsdt ;~(pfix dot list:read))           ::  /.  list
          (stag %fscm ;~(pfix com case:read))           ::  /,  switch by path
          (stag %fscn ;~(pfix cen horn:read))           ::  /%  propagate args
          (stag %fspm ;~(pfix pam pipe:read))           ::  /&  translates
          (stag %fscb ;~(pfix cab horn:read))           ::  /_  homo map
          (stag %fssm ;~(pfix sem gate:read))           ::  /;  operate on
          (stag %fscl ;~(pfix col path:read))           ::  /:  relative to
          (stag %fskt ;~(pfix ket cast:read))           ::  /^  cast
          (stag %fszp ;~(pfix zap ;~(sfix sym fas)))    ::  /!mark/ run to mark
          (stag %fszy ;~(sfix sym fas))                 ::  /mark/ render file
        ==
      ==
    ::
    ++  rail                                            ::  wide or tall
      |*  {wid/rule tal/rule}
      ?.  tol  wid                                      ::  !tol -> only wide
      ;~(pose wid tal)
    ::
    ++  read
      |%  ++  twig
            %+  rail
              (ifix [sel ser] (stag %conp (most ace wide:vez)))
            ;~(pfix gap tall:vez)
      ::
          ++  alts
            %+  rail
              (ifix [pel per] (most ace horn))
            ;~(sfix (star horn) gap duz)
      ::
          ++  horn
            %+  rail
              apex(tol |)
            ;~(pfix gap apex)
      ::
          ++  name
            %+  rail
              ;~(plug sym ;~(pfix tis horn))
            ;~(pfix gap ;~(plug sym horn))
      ::
          ++  list
            %+  rail  fail
            ;~(sfix (star horn) gap duz)
      ::
          ++  case
            %+  rail  fail
            =-  ;~(sfix (star -) gap duz)
            ;~(pfix gap fas ;~(plug hith horn))
      ::
          ++  pipe
            %+  rail
              ;~(plug (plus ;~(sfix sym pam)) horn)
            =+  (cook |=(a/term [a ~]) sym)
            ;~(pfix gap ;~(plug - horn))
      ::
          ++  gate
            %+  rail
              ;~(plug ;~(sfix wide:vez sem) horn)
            ;~(pfix gap ;~(plug tall:vez horn))
      ::
          ++  path
            %+  rail
              ;~(plug ;~(sfix hive col) horn)
            ;~(pfix gap ;~(plug hive horn))
      ::
          ++  cast
            %+  rail
              ;~(plug ;~(sfix wide:vez ket) horn)
            ;~(pfix gap ;~(plug tall:vez horn))
      --
    --
  --
::
++  lark                                                ::  filter arch names
  |=  {wox/$-(knot (unit @)) arc/arch}
  ^-  (map @ knot)
  %-  ~(gas by *(map @ knot))
  =|  rac/(list (pair @ knot))
  |-  ^+  rac
  ?~  dir.arc  rac
  =.  rac  $(dir.arc l.dir.arc, rac $(dir.arc r.dir.arc))
  =+  gib=(wox p.n.dir.arc)
  ?~(gib rac [[u.gib p.n.dir.arc] rac])
::
++  tack                                                ::  fold path to term
  |=  a/{i/term t/(list term)}  ^-  term
  (rap 3 |-([i.a ?~(t.a ~ ['-' $(a t.a)])]))
::
++  tear                                                ::  split term
  =-  |=(a/term `(list term)`(fall (rush a (most hep sym)) /[a]))
  sym=(cook crip ;~(plug low (star ;~(pose low nud))))
::
++  za                                                  ::  per event
  =|  $:  $:  our/ship                                  ::  computation owner
              hen/duct                                  ::  event floor
              $:  now/@da                               ::  event date
                  eny/@                                 ::  unique entropy
                  ska/sley                              ::  system namespace
              ==                                        ::
              mow/(list move)                           ::  pending actions
          ==                                            ::
          bay/baby                                      ::  all owned state
      ==                                                ::
  |%
  ++  abet                                              ::  resolve
    ^-  {(list move) baby}
    [(flop mow) bay]
  ::
  ++  reverse-dents
    |=  a/(jug dent dent)  ^+  a
    %+  roll  (~(tap by a))
    |=  {{k/dent v/(set dent)} b/(jug dent dent)}
    %+  roll  (~(tap in v))
    =+  [d=*dent b=b]
    |.
    (~(put ju b) d k)
  ::
  ++  dep-warps                                         ::  create %warp's
    |=  {dep/@uvH bes/(set dent) rav/$-({beam care} (unit rave))}
    (warp-beams dep (dep-beams bes) rav)
  ::
  ++  dep-beams  ::DEPRECATED only needed for @uvH handling
    |=  des/(set dent)  ^-  (set {beam care})
    ::  =;  ret
    ::    ~|  dep-beams+[des ret]
    ::    =;  pretty
    ::      ~&(dep-beams+[pretty] ret)
    ::    =/  pretty-beamcare
    ::      |=({a/beam b/care} `path`[(crip %c b ~) (tope a)])
    ::    =/  pretty-dent
    ::      |=  a/dent  ::^-  $^({path mark @p} path)
    ::      ?-  -.a
    ::        $beam  [%| (pretty-beamcare +.a)]
    ::        $bake  [%& (tope bem.a) mar.a `@p`(mug arg.a)]
    ::      ==
    ::    :-  %-  silt
    ::        (turn (~(tap in des)) pretty-dent)
    ::    %-  silt
    ::    (turn (~(tap in ret)) pretty-beamcare)
    =/  gof  (reverse-dents gaf.bay)
    |-  ^-  (set {beam care})
    %+  roll  (~(tap in des))
    |=  {den/dent bes/(set {beam care})}  ^+  bes
    ?-  -.den
      $beam  (~(put in bes) +.den)
      $bake  (~(uni in bes) ^$(des (~(get ju gof) den)))
    ==
  ::
  ++  warp-beams
    |=  {dep/@uvH bes/(set {beam care}) rav/$-({beam care} (unit rave))}
    %+  turn  (~(tap in bes))
    |=  {bem/beam ren/care}  ^-  move
    :^  hen  %pass  [(scot %p our) (scot %uv dep) (tope bem)]
    [%c [%warp [our p.bem] q.bem (rav bem ren)]]
  ::
  ++  deps-take                                         ::  take rev update
    |=  {tea/wire dep/@uvH bem/beam sih/sign}
    =<  abet  ^+  +>
    ?.  ?=($writ &2.sih)
      ~|(%bad-axun !!)
    ?~  p.sih  +>.$                :: acknowledged
    :: ~&  writ+tea
    =+  udap=(~(get by deh.bay) dep)
    ?~  udap  ~&(dep-lost+dep +>.$)
    =+  dap=u.udap
    =-  +>.$(mow mow, deh.bay (~(put by deh.bay) dep dap))
    ^+  [dap=dap mow=mow]
    ?-    -.q.dap
        $done  [dap mow]               ::  writ redundant
        $init  ~|(never-subscribed+dep !!)
        $sent
      :-  dap(q [%done ~])
      ;:  weld                                          ::  cancel rest
        (dep-warps dep (~(del in p.dap) bem) |=({beam care} ~))
        (turn (~(tap in dux.q.dap)) |=(hen/duct [hen %give %news dep]))
        mow
      ==
    ==
  ::
  ++  exec-cancel
    =<  abet  ^+  .
    =+  nym=(~(get by dym.bay) hen)
    ?~  nym                                             ::  XX should never
      ~&  [%ford-mystery hen]
      ..abet
    =+  tas=(need (~(get by q.tad.bay) u.nym))
    abut:~(decamp zo [u.nym tas])
  ::
  ++  exec-start
    |=  kub/bilk
    =<  abet  ^+  +>
    =+  num=p.tad.bay
    ?<  (~(has by dym.bay) hen)
    =:  p.tad.bay  +(p.tad.bay)
        dym.bay    (~(put by dym.bay) hen num)
      ==
    ~(exec zo [num `task`[hen kub ~ ~]])
  ::
  ++  task-take
    |=  {num/@ud {van/vane ren/care bem/beam} sih/sign}
    =<  abet  ^+  +>
    ?:  ?=({$unto $quit *} +.sih)
      +>.$
    =+  tus=(~(get by q.tad.bay) num)
    ?~  tus
      ~&  [%ford-lost van num]
      +>.$
    (~(take zo [num u.tus]) [van ren bem] sih)
  ::
  ++  wasp                                              ::  get next revision
    ~%  %ford-w  ..is  ~
    |=  {dep/@uvH ask/?}
    =<  abet  ^+  +>
    ?:  =(`@`0 dep)
      ~&(dep-empty+hen +>.$)
    ?:  =(dep 0vtest)                                   ::  upstream testing
      +>.$(mow ?.(ask mow :_(mow [hen %give %news dep])))
    =+  dap=(~(get by deh.bay) dep)
    ?~  dap  ~&(dep-missed+dep +>.$)                    ::  XX  ~|  !!
    =>  .(dap `deps`u.dap)
    ::
    |^  =^  q-dap  .  ?:(ask start cancel)
        +>.^$(deh.bay (~(put by deh.bay) dep [p.dap q-dap]))
    ::
    ++  cancel
      ^+  [q.dap ..$]
      ?-  -.q.dap
        $done  [q.dap ..$]
        $init  ~&(on-wasp-kill-empty+dep [q.dap ..$])   :: crash?
        $sent
          =.  dux.q.dap  (~(del in dux.q.dap) hen)
          ?^  dux.q.dap
            [q.dap ..$]
          =/  ded  (dep-warps dep p.dap |=({beam care} ~))
          :-  [%init ~]
          ..$(mow (welp ded mow))
      ==
    ::
    ++  start
      ^+  [q.dap ..$]
      ?-  -.q.dap
        $done  [q.dap ..$(mow :_(mow [hen %give %news dep]))]
        $sent
          =.  dux.q.dap  (~(put in dux.q.dap) hen)
          [q.dap .]
      ::
        $init
          =/  nex  %^  dep-warps  dep  p.dap
                   |=({bem/beam ren/care} `[%next ren r.bem (flop s.bem)])
          :-  [%sent [hen ~ ~]]
          ..$(mow (welp nex mow))
      ==
    --
  ::
  ++  zo
    ~%  %ford-z  ..is  ~
    =|  dyv/@                                           ::  recursion level
    |_  {num/@ud task}
    ++  abet                                            ::  store a blocked task
      %_(..zo q.tad.bay (~(put by q.tad.bay) num +<+))
    ::
    ++  abut                                            ::  remove a task
      %_  ..zo
        q.tad.bay  (~(del by q.tad.bay) num)
        dym.bay    (~(del by dym.bay) nah)
      ==
    ::
    ++  decamp                                          ::  stop requests
      ^+  .
      =+  kiz=(~(tap in kig))
      |-  ^+  +>
      ?~  kiz  +>
      $(kiz t.kiz, mow :_(mow [hen (cancel i.kiz)]))
    ::
    ++  cancel                                          ::  stop a request
      |=  {van/vane ren/care bem/beam}  ^-  (wind note gift)
      ?+  van  ~|(stub-cancel+van !!)
        $c  [%pass (camp-wire +<) van [%warp [our p.bem] q.bem ~]]
        $g  [%pass (camp-wire +<) van [%deal [our p.bem] q.bem [%pull ~]]]
      ==
    ::
    ++  camp-wire                                       ::  encode block
      |=  {van/vane ren/care bem/beam}  ^-  wire
      [(scot %p our) (scot %ud num) van ren (tope bem)]
    ::
    ++  camp                                            ::  request data
      |=  {van/vane ren/care bem/beam}
      ^+  +>
      ~&  >>  [%camping van ren bem]
      %_    +>.$
          kig  (~(put in kig) +<)
          mow
        :_  mow
        :-  hen
        ?+    van  ~&(%camp-stub !!)
            $g
          =/  tyl/path
            ?.  ?=($x ren)
              s.bem
            ?>  ?=(^ s.bem)
            t.s.bem
          ::
          :+  %pass  (camp-wire +<.$)
          [%g [%deal [our p.bem] q.bem [%peer %scry ren (flop tyl)]]]
        ::
            $c
          :+  %pass  (camp-wire +<.$)
          [%c [%warp [our p.bem] q.bem [~ %sing ren r.bem (flop s.bem)]]]
        ==
      ==
    ::
    ++  take                                            ::  handle ^take
      |=  {{van/vane ren/care bem/beam} sih/sign}
      ^+  ..zo
      ?-    &2.sih
          $writ  (take-writ [van ren bem] p.sih)
          $made  (take-made [van ren bem] [p q]:sih)
          $unto
        ?+  -.p.sih  ~|(ford-strange-unto+[-.p.sih] !!)
          $diff  (take-diff [van ren bem] p.p.sih)
          $reap  ?~  p.p.sih  ..zo
                 ((slog leaf+"ford-reap-fail" u.p.p.sih) ..zo)
        ==
      ==
   ::
    ++  take-diff
      |=  {{van/vane ren/care bem/beam} cag/cage}
      ^+  ..zo
      ?>  ?=($g van)
      ?:  |(!?=($x ren) =(-.s.bem p.cag))
        =.  kig  (~(del in kig) +<-.$)
        =.  mow  :_(mow [hen (cancel van ren bem)])
        =+  (cat 3 van ren)
        exec(keg (~(put by keg) [- bem] cag))
      =.  mow
        :_  mow
        :^  hen  %pass  (camp-wire van ren bem)
        [%f %exec our ~ bek %cast ((hard mark) -.s.bem) %$ cag]
      ..zo
    ::
    ++  take-made
      |=  {{van/vane ren/care bem/beam} dep/@uvH gag/gage}  ::  XX  depends?
      ^+  ..zo
      ?>  ?=($g van)
      =.  kig  (~(del in kig) +<-.$)
      =.  mow  :_(mow [hen (cancel van ren bem)])
      ?:  ?=($| -.gag)
        abut:(give [%made dep %| leaf+"ford-scry-made-fail" p.gag])
      ?:  ?=($tabl -.gag)
        abut:(give [%made dep %| leaf+"ford-scry-made-strange" ~])
      =+  (cat 3 van ren)
      exec(keg (~(put by keg) [- bem] p.gag))
    ::
    ++  take-writ
      |=  {{van/vane ren/care bem/beam} rot/riot}
      ^+  ..zo
      ?>  ?=($c van)
      =.  kig  (~(del in kig) +<-.$)
      ?~  rot
        =^  dep  deh.bay  (pin-dephash ~ deh.bay)       ::  TODO: dependencies?
        abut:(give [%made dep %| (smyt ren (tope bem)) ~])
      =+  (cat 3 van ren)
      exec(keg (~(put by keg) [- bem] r.u.rot))
    ::
    ::+|
    ::
    ::> Exec proper
    ::
    ++  tabl-run                                        ::  apply to all elems
      |=  fun/(burg cage gage)
      |=  {cof/cafe gag/gage}
      ^-  (bolt gage)
      ?.  ?=($tabl -.gag)
        (tug:bo (to-cage:bo (new:bo cof gag)) fun)
      %+  tug:bo
        |-  ^-  (bolt (list (pair gage gage)))
        ?~  p.gag  (new:bo cof ~)
        %.  [cof p.gag]
        ;~  tug:bo
          ;~  cell:bo
            |=  {cof/cafe {^ q/gage} t/gagl}
            (catch-error:bo ^^$(cof cof, gag q))
            |=  {cof/cafe ^ t/gagl}
            ^$(cof cof, p.gag t)
          ==
          (with:bo |=({v/gage t/gagl} [[p.i.p.gag v] t]))
        ==
      (with:bo |=(rex/gagl [%tabl rex]))
    ::
    ++  dash                                            ::  process cache
      |=  cof/cafe
      ^+  +>
      %_(+> jav.bay q.cof, deh.bay r.cof, gaf.bay s.cof)
    ::
    ++  diff                                            ::  diff
      |=  {cof/cafe kas/silk kos/silk}
      ^-  (bolt gage)
      %.  [cof kas kos]
      ;~  tug:bo
        ;~  cell:bo
          |=({cof/cafe p/silk q/silk} (to-cage:bo (make cof p)))
          |=({cof/cafe p/silk q/silk} (to-cage:bo (make cof q)))
        ==
        |=  {cof/cafe cay/cage coy/cage}  ^-  (bolt gage)
        ?.  =(p.cay p.coy)
          %+  err:bo  cof  :_  ~
          leaf+"diff on data of different marks: {(trip p.cay)} {(trip p.coy)}"
        ?:  =(q.q.cay q.q.coy)
          (new:bo cof [%& %null [%atom %n ~] ~])
        ::
        %+  tug:bo  (fang cof p.cay)
        |=  {cof/cafe pro/vase}
        ?.  (slab %grad p.pro)
          (err:bo cof leaf+"no ++grad" ~)
        =+  gar=(slap pro [%limb %grad])
        ?@  q.gar
          =+  for=((sand %tas) q.gar)
          ?~  for  (err:bo cof leaf+"bad mark ++grad" ~)
          %+  make  cof  ^-  silk
          :+  %diff
            [%cast u.for [%$ cay]]
          [%cast u.for [%$ coy]]
        ?.  (slab %form p.gar)
          (err:bo cof leaf+"no ++form:grad" ~)
        ?.  (slab %diff p.gar)
          (err:bo cof leaf+"no ++diff:grad" ~)
        %+  tug:bo  (keel cof pro [[%& 6]~ q.cay]~)
        |=  {cof/cafe pox/vase}
        %+  tug:bo
          %^  maul  cof
            (slap (slap pox [%limb %grad]) [%limb %diff])
          q.coy
        |=  {cof/cafe dif/vase}
        =+  for=((soft @tas) q:(slap gar [%limb %form]))
        ?~  for
          (err:bo cof leaf+"bad ++form:grad" ~)
        (new:bo cof [%& u.for dif])
      ==
    ::
    ++  exec                                            ::  execute task
      ^+  ..zo
      ?:  !=(~ kig)  ..zo
      =+  bot=(make-with-concrete-revision [~ jav.bay deh.bay gaf.bay] kas)
      =^  dep  bot  (pin:bo bot)
      =.  ..exec  (dash p.bot)
      ?-  -.q.bot
        $0  abut:(give [%made dep q.q.bot])
        $2  abut:(give [%made dep %| q.q.bot])
        $1  =+  zuk=(~(tap by p.q.bot) ~)
            =<  abet
            |-  ^+  ..exec
            ?~  zuk  ..exec
            $(zuk t.zuk, ..exec `_..exec`(camp van.i.zuk ren.i.zuk bem.i.zuk))
      ==
    ::
    ++  give
      |=  gef/gift
      %_(+> mow :_(mow [hen %give gef]))
    ::
    ++  compile-to-hood
      ~/  %compile-to-hood
      |=  {cof/cafe bem/beam}
      :: ~&  compile-to-hood+(tope bem)
      ^-  (bolt hood)
      %+  admit:bo  |.(leaf+"ford: compile-to-hood {<[(tope bem)]>}")
      %+  tug:bo  (load-file cof %*(. bem s [%hoon s.bem]))
      |=  {cof/cafe cay/cage}
      %+  (with-cache:bo %hood)  (new:bo cof bem(r [%ud 0]) cay)
      ^-  (burg (pair beam cage) hood)
      ~%  %hood-miss  ..abet  ~
      |=  {cof/cafe bem/beam cay/cage}
      ?.  ?=(@ q.q.cay)
        (err:bo cof ~)
      =+  vex=((full (fair bem)) [[1 1] (trip q.q.cay)])
      ?~  q.vex
        (err:bo cof [%leaf "syntax error: {<p.p.vex>} {<q.p.vex>}"] ~)
      (new:bo cof p.u.q.vex)
    ::
    ++  fame                                            ::  beam with - as /
      ~/  %fame
      |=  {cof/cafe bem/beam}
      ^-  (bolt beam)
      =;  une/(bolt (unit beam))
        %+  tug:bo  une
        |=  {cof/cafe bom/(unit beam)}  ^-  (bolt beam)
        ?^  bom  (new:bo cof u.bom)
        (err:bo cof leaf+"fame: no {<(tope bem)>}" ~)
      %+  (with-cache:bo %path)  (new:bo cof bem)
      |=  {cof/cafe bem/beam}
      =^  pax  bem  [(flop s.bem) bem(s ~)]
      |^  opts
      ++  opts                                          ::  search unless done
        ^-  (bolt (unit beam))
        ?^  pax  (wide(pax t.pax) (tear i.pax))
        %+  tug:bo  (load-to-mark cof %hoon bem)
        (with:bo |=(a/(unit vase) ?~(a ~ `bem)))
      ::
      ++  wide                                          ::  match segments
        |=  sub/(list term)  ^-  (bolt (unit beam))
        ?~  sub  opts
        ?~  t.sub  opts(s.bem [i.sub s.bem])
        =>  .(sub `(list term)`sub)                     ::  TMI
        =-  (tug:bo - flat)
        %^  filter-at-beam  cof  bem
        |=  {cof/cafe dir/knot}  ^-  (bolt (unit beam))
        =+  sus=(tear dir)
        ?.  =(sus (scag (lent sus) sub))
          (new:bo cof ~)
        %_  ^$
          cof  cof
          sub   (slag (lent sus) sub)
          s.bem  [dir s.bem]
        ==
      ::
      ++  flat                                          ::  at most one
        |=  {cof/cafe opt/(map term beam)}  ^-  (bolt (unit beam))
        ?~  opt  (new:bo cof ~)
        ?:  ?=({^ $~ $~} opt)  (new:bo cof `q.n.opt)
        =+  all=(~(run by `(map term beam)`opt) tope)
        (err:bo cof leaf+"fame: fork {<all>}" ~)
      --
    ::
    ++  fang                                            ::  protocol door
      |=  {cof/cafe for/mark}  ^-  (bolt vase)
      :: ~&  fang+for
      (load-core cof bek /[for]/mar)
    ::
    ++  join
      |=  {cof/cafe for/mark kas/silk kos/silk}
      ^-  (bolt gage)
      %.  [cof kas kos]
      ;~  tug:bo
        ;~  cell:bo
          |=({cof/cafe p/silk q/silk} (to-cage:bo (make cof p)))
          |=({cof/cafe p/silk q/silk} (to-cage:bo (make cof q)))
        ==
        |=  {cof/cafe cay/cage coy/cage}  ^-  (bolt gage)
        ::
        %+  tug:bo  (fang cof for)
        |=  {cof/cafe pro/vase}
        ?.  (slab %grad p.pro)
          (err:bo cof leaf+"no ++grad" ~)
        =+  gar=(slap pro [%limb %grad])
        ?@  q.gar
          =+  too=((sand %tas) q.gar)
          ?~  too  (err:bo cof leaf+"bad mark ++grad" ~)
          (make cof %join u.too [%$ cay] [%$ coy])
        ?.  (slab %form p.gar)
          (err:bo cof leaf+"no ++form:grad" ~)
        =+  fom=((soft @tas) q:(slap gar [%limb %form]))
        ?~  fom
          (err:bo cof leaf+"bad ++form:grad" ~)
        ?.  &(=(u.fom p.cay) =(u.fom p.coy))
          %+  err:bo  cof  :_  :_  ~
            leaf+"join on data of bad marks: {(trip p.cay)} {(trip p.coy)}"
          leaf+"expected mark {(trip u.fom)}"
        ?:  =(q.q.cay q.q.coy)
          (new:bo cof [%& cay])
        ?.  (slab %join p.gar)
          (err:bo cof leaf+"no ++join:grad" ~)
        %+  tug:bo
          %^  maul  cof
            (slap (slap pro [%limb %grad]) [%limb %join])
          (slop q.cay q.coy)
        |=  {cof/cafe dif/vase}
        ?@  q.dif
          (new:bo cof [%& %null dif])
        (new:bo cof [%& u.fom (slot 3 dif)])
      ==
    ::
    ++  mash
      |=  {cof/cafe for/mark mas/milk mos/milk}
      ^-  (bolt gage)
      %.  [cof r.mas r.mos]
      ;~  tug:bo
        ;~  cell:bo
          |=({cof/cafe p/silk q/silk} (to-cage:bo (make cof p)))
          |=({cof/cafe p/silk q/silk} (to-cage:bo (make cof q)))
        ==
        |=  {cof/cafe cay/cage coy/cage}  ^-  (bolt gage)
        %+  tug:bo  (fang cof for)
        |=  {cof/cafe pro/vase}
        ?.  (slab %grad p.pro)
          (err:bo cof leaf+"no ++grad" ~)
        =+  gar=(slap pro [%limb %grad])
        ?@  q.gar
          =+  too=((sand %tas) q.gar)
          ?~  too  (err:bo cof leaf+"bad mark ++grad" ~)
          %+  make  cof
          `silk`[%mash u.too [p.mas q.mas [%$ cay]] [p.mos q.mos [%$ coy]]]
        ?.  (slab %form p.gar)
          (err:bo cof leaf+"no ++form:grad" ~)
        =+  fom=((soft @tas) q:(slap gar [%limb %form]))
        ?~  fom
          (err:bo cof leaf+"bad ++form:grad" ~)
        ?.  &(=(u.fom p.cay) =(u.fom p.coy))
          %+  err:bo  cof  :_  :_  ~
            leaf+"mash on data of bad marks: {(trip p.cay)} {(trip p.coy)}"
          leaf+"expected mark {(trip u.fom)}"
        ?:  =(q.q.cay q.q.coy)
          (new:bo cof %& cay)
        ?.  (slab %mash p.gar)
          (new:bo cof %& %null [%atom %n ~] ~)
        %+  tug:bo
          %^  maul  cof
            (slap (slap pro [%limb %grad]) [%limb %mash])
          %+  slop
            :(slop [[%atom %p ~] p.mas] [[%atom %tas ~] q.mas] q.cay)
          :(slop [[%atom %p ~] p.mos] [[%atom %tas ~] q.mos] q.coy)
        (with:bo |=(dif/vase [%& u.fom dif]))
      ==
    ::
    ++  kale                                            ::  mutate
      |=  {cof/cafe kas/silk muy/(list (pair wing silk))}
      ^-  (bolt gage)
      %+  tug:bo
        |-  ^-  (bolt (list (pair wing vase)))
        ?~  muy  (new:bo cof ~)
        %+  tug:bo  (to-cage:bo (make cof q.i.muy))
        |=  {cof/cafe cay/cage}
        %+  tug:bo  ^$(muy t.muy)
        |=  {cof/cafe rex/(list (pair wing vase))}
        (new:bo cof [[p.i.muy q.cay] rex])
      |=  {cof/cafe yom/(list (pair wing vase))}
      %+  tug:bo  (make cof kas)
      %-  tabl-run
      |=  {cof/cafe cay/cage}
      %+  tug:bo  (keel cof q.cay yom)
      (with:bo |=(vax/vase [%& p.cay vax]))
    ::
    ++  keel                                            ::  apply mutations
      |=  {cof/cafe suh/vase yom/(list (pair wing vase))}
      ^-  (bolt vase)
      %+  admit:bo
        =<  |.  ^-  tank
            :+  %palm  [" " ~ ~ ~]
            ~[leaf+"ford: keel" rose+[" " ~ ~]^(murn yom +)]
        |=  {a/wing b/span *}  ^-  (unit tank)
        =+  typ=(mule |.(p:(slap suh wing+a)))
        ?:  ?=($| -.typ)
          (some (show [%c %pull] %l a))
        ?:  (~(nest ut p.typ) | b)  ~
        %^  some  %palm  ["." ~ ~ ~]
        ~[(show [%c %mute] %l a) >[p.typ b]<]
      ::
      %^  wrapped-slap  cof
        %+  slop  suh
        |-  ^-  vase
        ?~  yom  [[%atom %n ~] ~]
        (slop q.i.yom $(yom t.yom))
      ^-  twig
      :+  %keep  [%& 2]~
      =+  axe=3
      |-  ^-  (list (pair wing twig))
      ?~  yom  ~
      :-  [p.i.yom [%$ (peg axe 2)]]
      $(yom t.yom, axe (peg axe 3))
    ::
    ++  lads                                            ::  possible children
      |=  {cof/cafe bem/beam}
      ^-  (bolt (map knot $~))
      %^  filter-at-beam  cof  bem
      |=  {cof/cafe dir/knot}
      %+  tug:bo  (load-arch cof bem(s [dir s.bem]))
      (with:bo |=(a/arch ?~(dir.a ~ (some ~))))
    ::
    ++  laze                                            ::  find real or virtual
      |=  {cof/cafe bem/beam}
      %^  filter-at-beam  cof  bem
      |=  {cof/cafe for/mark}
      ^-  (bolt (unit $~))
      ?.  ((sane %tas) for)  (new:bo cof ~)
      =.  s.bem  [for s.bem]
      %+  tug:bo  (load-arch cof bem)
      |=  {cof/cafe arc/arch}
      (new:bo cof (bind fil.arc $~))
    ::
    ++  lace                                            ::  load file
      |=  {cof/cafe for/mark bem/beam}
      ^-  (bolt vase)
      %+  admit:bo  |.(leaf+"ford: load {<for>} {<(tope bem)>}")
      =.  s.bem  [for s.bem]
      %+  tug:bo  (load-file cof bem)
      |=  {cof/cafe cay/cage}  ^-  (bolt vase)
      ?.  =(for p.cay)
        (err:bo cof leaf+"unexpected mark {<p.cay>}" ~)
      (new:bo cof q.cay)
    ::
    ++  lake                                            ::  check+coerce
      |=  {fit/? for/mark}
      |=  {cof/cafe sam/vase}
      ^-  (bolt vase)
      %+  admit:bo  |.(leaf+"ford: check {<[for bek `@p`(mug q.sam)]>}")
      %+  tug:bo  (fang cof for)
      |=  {cof/cafe tux/vase}
      =+  typ=p:(slot 6 tux)
      =.  typ  ?+(-.typ typ $face q.typ)
      ?:  (~(nest ut typ) | p.sam)
        (new:bo cof typ q.sam)
      ?.  fit  (err:bo cof [%leaf "ford: invalid type: {<p.sam>}"]~)
      ?.  (slob %grab p.tux)
        (err:bo cof [%leaf "ford: no grab: {<[for bek]>}"]~)
      =+  gab=(slap tux [%limb %grab])
      ?.  (slob %noun p.gab)
        (err:bo cof [%leaf "ford: no noun: {<[for bek]>}"]~)
      %+  tug:bo  (maul cof (slap gab [%limb %noun]) [%noun q.sam])
      |=  {cof/cafe pro/vase}
      ?>  (~(nest ut typ) | p.pro)
      ?:  =(q.pro q.sam)
        (new:bo cof typ q.pro)
      (err:bo cof [%leaf "ford: invalid content: {<[for bek]>}"]~)
    ::
    ++  to-concrete-revision                            ::  numerical r.bem
      |=  {cof/cafe bem/beam}
      ^-  (bolt beam)
      ?:  ?=($ud -.r.bem)  (new:bo cof bem)
      =+  von=(syve [151 %noun] ~ %cw bem(s ~))
      ?~  von  [p=cof q=[%1 [%c %w bem(s ~) ~] ~ ~]]
      (new:bo cof bem(r [%ud ((hard @) +.+:(need u.von))]))
    ::
    ++  infer-product-span
      |=  {cof/cafe typ/span gen/twig}
      %+  (from-each:bo cof)  (mule |.((~(play ut typ) gen)))
      |=(ref/span ref)
    ::
    ++  filter-at-beam
      |*  {cof/cafe bem/beam fun/(burg knot (unit))}
      %+  tug:bo  (load-arch cof bem)
      |=({cof/cafe arc/arch} ((some-in-map:bo fun) cof dir.arc))
    ::
    ++  load-core
      |=  {cof/cafe bem/beam}  ^-  (bolt vase)
      %+  tug:bo  (to-concrete-revision cof bem)
      |=  {cof/cafe bem/beam}
      (load-with-path cof many+~ bem bem)
    ::
    ++  load-with-path
      ~/  %load-with-path
      |=  {cof/cafe arg/coin bem/beam bom/beam}
      %+  tug:bo  (to-concrete-revision cof bem)
      |=  {cof/cafe bem/beam}
      %+  (with-cache:bo %boil)  (new:bo cof arg bem bom)
      |=  {cof/cafe arg/coin bem/beam bom/beam}
      %+  tug:bo  (fame cof bem)
      |=  {cof/cafe bem/beam}
      (tug:bo (compile-to-hood cof bem) abut:(meow bom arg))
    ::
    ++  load-arch
      |=  {cof/cafe bem/beam}
      ^-  (bolt arch)
      =+  von=(syve [151 %noun] ~ %cy bem)
      ?~  von  [p=cof q=[%1 [%c %y bem ~] ~ ~]]
      ?>  ?=({$~ $arch ^} u.von)
      =+  arc=((hard arch) q.q.u.u.von)
      %+  tug:bo  (to-concrete-revision cof bem)
      |=  {cof/cafe bem/beam}
      (add-dep:bo [%beam bem %z] (new:bo cof arc))
    ::
    ++  load-file
      ~/  %load-file
      |=  {cof/cafe bem/beam}
      ^-  (bolt cage)
      ::  TODO  add-dep:bo
      ?:  =([%ud 0] r.bem)
        (err:bo cof [leaf+"ford: no data: {<(tope bem(s ~))>}"]~)
      =+  von=(syve [151 %noun] ~ %cx bem)
      ?~  von
        [p=cof q=[%1 [[%c %x bem ~] ~ ~]]]
      ?~  u.von
        (err:bo cof leaf+"file not found" (smyt (tope bem)) ~)
      (new:bo cof u.u.von)
    ::
    ++  load-to-mark
      ~/  %load-to-mark
      |=  {cof/cafe for/mark bem/beam}
      %+  (with-cache:bo %load)
        ::  TODO  remove add-dep:bo (should be moved to load-file)
        (add-dep:bo [%beam bem %z] (new:bo cof for bem))
      |=  {cof/cafe for/mark bem/beam}
      ^-  (bolt (unit vase))
      %+  tug:bo  (laze cof bem)
      |=  {cof/cafe mal/(map mark $~)}
      ?:  (~(has by mal) for)
        (tug:bo (lace cof for bem) (with:bo some))
      =+  opt=(silt (turn (~(tap by mal)) head))        ::  XX asymptotics
      %+  tug:bo  (find-translation-path cof for opt)
      |=  {cof/cafe wuy/(list @tas)}
      ?~  wuy  (new:bo cof ~)
      %+  tug:bo
        (lace cof i.wuy bem)
      |=  {cof/cafe hoc/vase}
      (tug:bo (run-marks cof i.wuy t.wuy hoc) (with:bo some))
    ::
    ++  render-or-load
      |=  {cof/cafe for/mark arg/coin bem/beam}
      ^-  (bolt vase)
      %+  catch:bo
        %+  admit:bo  |.(leaf+"load: attempt renderer")
        (load-with-path cof arg [-.bem /[for]/ren] bem)
      |=  cof/cafe  ^-  (bolt vase)
      %+  admit:bo  |.(leaf+"load: attempt mark")
      %+  tug:bo  (load-to-mark cof for bem)
      |=  {cof/cafe vux/(unit vase)}
      ?^  vux  (new:bo cof u.vux)
      (err:bo cof leaf+"ford: no {<for>} at {<(tope bem)>}" ~)
    ::
    ++  translate-mark
      ~/  %translate-mark
      |=  {cof/cafe too/mark for/mark vax/vase}
      =*  translate-mark-jet  .
      :: ~$  translate-mark
      ^-  (bolt vase)
      :: %+  admit:bo  |.(leaf+"ford: translate-mark {<too>} {<for>} {<p.vax>}")
      ?:  =(too for)  (new:bo cof vax)
      ?:  |(=(%noun for) =(%$ for))
        ((lake & too) cof vax)
      %+  tug:bo  (fang cof for)
      |=  {cof/cafe pro/vase}  ^-  (bolt vase)
      ?:  :: =<  $  ~%  %limb-grow  translate-mark-jet  ~  |.
          &((slob %grow p.pro) (slob too p:(slap pro [%limb %grow])))
        :: ~$  translate-mark-grow
        :: =<  $  ~%  %grow  translate-mark-jet  ~  |.
        %+  admit:bo  |.(leaf+"ford: grow {<for>} to {<too>}")
        %+  tug:bo  (keel cof pro [[%& 6]~ vax]~)
        |=  {cof/cafe pox/vase}
        (wrapped-slap cof pox [%per [%limb %grow] [%limb too]])
      %+  tug:bo  (fang cof too)
      ~%  %grab  translate-mark-jet  ~
      |=  {cof/cafe pro/vase}
      =+  :: =<  $  ~%  %limb-grab  +  ~  |.
          ^=  zat  ^-  (unit vase)
          ?.  (slob %grab p.pro)  ~
          =+  gab=(slap pro [%limb %grab])
          ?.  (slob for p.gab)  ~
          `(slap gab [%limb for])
      ?~  zat
        :: ~$  translate-mark-miss
        (err:bo cof [%leaf "ford: no translate-mark: {<[for too]>}"]~)
      :: ~$  translate-mark-grab
      ~|  [%translate-mark-maul for too]
      (maul cof u.zat vax)
    ::
    ++  translation-targets
      ~/  %translation-targets
      |=  {cof/cafe for/mark}  ^-  (bolt (set @tas))
      %+  tug:bo  (catch:bo (fang cof for) |=(cof/cafe (new:bo cof %void ~)))
      %-  with:bo
      |=  vax/vase  ^-  (set mark)
      %-  =-  ~(gas in `(set mark)`-)
          ?.  (slob %grow p.vax)  ~
          (silt (sloe p:(slap vax [%limb %grow])))
      ?.  (slob %garb p.vax)  ~
      =+  (slap vax [%limb %garb])
      (fall ((soft (list mark)) q) ~)
    ::
    ++  find-translation-path
      ~/  %find-translation-path
      |=  {cof/cafe too/mark fro/(set mark)}
      =*  find-translation-path-jet  .
      :: ~&  find-translation-path+[too=too fro=fro]
      :: =-  =+  (tug:bo - (with:bo |=(a/(list mark) ~&(find-translation+a ~))))
      ::     +<
      ^-  (bolt (list mark))
      =;  gro/(burg (set mark) (list mark))
        %+  catch:bo  (gro cof too ~ ~)                 :: XX better grab layer
        ~%  %grab  find-translation-path-jet  ~
        |=  cof/cafe
        %+  admit:bo  |.(leaf+"cast: finding grabbable grow destinations")
        %+  tug:bo  (fang cof too)
        |=  {cof/cafe vax/vase}  ^-  (bolt (list mark))
        ?.  (slob %grab p.vax)  (new:bo cof ~)
        %+  tug:bo
          (gro cof (silt (sloe p:(slap vax [%limb %grab]))))
        (with:bo |=(a/path (welp a /[too])))
      |=  {cof/cafe tag/(set mark)}
      =|  $:  war/(map mark (list mark))
              pax/(list mark)
              won/{p/mark q/(qeu mark)}
          ==
      %.  [cof fro]
      |=  {cof/cafe fro/(set mark)}  ^-  (bolt (list mark))
      ?:  (~(has in tag) p.won)
        (new:bo cof (flop pax))
      =+  for=(skip (~(tap by fro)) ~(has by war))
      =.  for  (sort for aor)         ::  XX useful?
      =:  q.won  (~(gas to q.won) for)
          war  (~(gas by war) (turn for |=(mark [+< pax])))
        ==
      ?:  =(~ q.won)
        (new:bo cof ~)
      =.  won  ~(get to q.won)
      %+  tug:bo  (translation-targets cof p.won)
      |=  {cof/cafe fro/(set mark)}
      =.  pax  [p.won (~(got by war) p.won)]
      ^$(cof cof, fro fro)
    ::
    ++  run-marks
      |=  {cof/cafe for/mark yaw/(list mark) vax/vase}
      ^-  (bolt vase)
      ?~  yaw  (new:bo cof vax)
      %+  tug:bo  (translate-mark cof i.yaw for vax)
      |=  {cof/cafe yed/vase}
      ^$(cof cof, for i.yaw, yaw t.yaw, vax yed)
    ::
    ++  mint-cached
      ~/  %mint-cached
      |=  {cof/cafe sut/span gen/twig}
      ^-  (bolt (pair span nock))
      %+  (with-cache:bo %slim)  (new:bo cof sut gen)
      |=  {cof/cafe sut/span gen/twig}
      =+  puz=(mule |.((~(mint ut sut) [%noun gen])))
      ?-  -.puz
        $|  (err:bo cof p.puz)
        $&  (new:bo cof p.puz)
      ==
    ::
    ++  wrapped-slap
      ~/  %wrapped-slap
      |=  {cof/cafe vax/vase gen/twig}
      ^-  (bolt vase)
      %+  tug:bo  (mint-cached cof p.vax gen)
      |=  {cof/cafe typ/span fol/nock}
      %+  (from-toon:bo cof)  (mock [q.vax fol] (sloy syve))
      |=(val/* `vase`[typ val])
    ::
    ++  make-with-concrete-revision                     ::  numerical r.bek
      |=  {cof/cafe kas/silk}
      %+  tug:bo  (to-concrete-revision cof bek ~)
      |=({cof/cafe byk/beak *} (make(bek byk) cof kas))
    ::
    ++  abbrev                                          ::  shorten coin
      |=(a/coin ?-(-.a $$ a, $blob a(p (mug p.a)), $many a(p (turn p.a ..$))))
    ::
    ++  make                                            ::  reduce silk
      |=  {cof/cafe kas/silk}
      :: =+  ^=  pre
      ::     ?+  -.kas  `term`-.kas
      ::       ^  %cell:bo
      ::       $bake  [-.kas p.kas (tope r.kas) ~(rent co (abbrev q.kas))]
      ::       $core  [-.kas (tope p.kas)]
      ::     ==
      :: ~?  !=(%$ pre)  [dyv `term`(cat 3 %make (fil 3 dyv ' ')) pre]
      :: =-  ~?  !=(%$ pre)  [dyv `term`(cat 3 %made (fil 3 dyv ' ')) pre]  -
      ::
      =.  dyv  +(dyv)                                   ::  go deeper
      ^-  (bolt gage)
      ?-    -.kas
          ^
        %.  [cof p.kas q.kas]
        ;~  tug:bo
          ;~  cell:bo
            |=({cof/cafe p/silk q/silk} (to-cage:bo ^$(cof cof, kas p.kas)))
            |=({cof/cafe p/silk q/silk} (to-cage:bo ^$(cof cof, kas q.kas)))
          ==                          ::  XX merge %tabl
        ::
          |=  {cof/cafe bor/cage heg/cage}  ^-  (bolt gage)
          (to-gage:bo (new:bo cof (slop q.bor q.heg)))
        ==
      ::
          $$  (new:bo cof %& p.kas)
          $alts
        |-  ^-  (bolt gage)
        ?~  p.kas  (err:bo cof leaf+"ford: out of options" ~)
        %+  catch:bo  (admit:bo %option ^$(cof cof, kas i.p.kas))
        |=  cof/cafe  ^-  (bolt gage)
        ^$(cof cof, p.kas t.p.kas)
      ::
          $bake
        ^-  (bolt gage)
        %+  admit:bo
          |.(leaf+"ford: bake {<p.kas>} {<(tope r.kas)>} {~(rend co q.kas)}")
        %+  tug:bo  (to-concrete-revision cof r.kas)
        |=  {cof/cafe bem/beam}
        %+  under-dep:bo  `dent`[%bake bem [p q]:kas]
        %+  tug:bo  (render-or-load cof p.kas q.kas bem)
        |=  {cof/cafe vax/vase}
        (new:bo cof `gage`[%& p.kas vax])
      ::
          $bunt
        %+  admit:bo  |.(leaf+"ford: bunt {<p.kas>}")
        %+  tug:bo  (fang cof p.kas)
        |=  {cof/cafe tux/vase}
        =+  [typ=p val=q]:(slot 6 tux)
        =.  typ  ?+(-.typ typ $face q.typ)
        (new:bo cof [%& p.kas [typ val]])
      ::
          $call
        ::  %+  admit:bo  |.(leaf+"ford: call {<`@p`(mug kas)>}")
        %.  [cof p.kas q.kas]
        ;~  tug:bo
          ;~  cell:bo
            |=({cof/cafe p/silk q/silk} (to-cage:bo ^$(cof cof, kas p)))
            |=({cof/cafe p/silk q/silk} ^$(cof cof, kas q))
          ==
        ::
          |=  {cof/cafe gat/cage sam/gage}
          %.  [cof sam]
          %-  tabl-run
          |=  {cof/cafe sam/cage}
          (to-gage:bo (maul cof q.gat q.sam))
        ==
      ::
          $cast
        %+  admit:bo  |.(leaf+"ford: cast {<p.kas>}")
        %+  tug:bo  $(kas q.kas)
        %-  tabl-run
        |=  {cof/cafe cay/cage}
        :: ~$  make-cast
        :: ~>  %live.  :: ~$(make-cast-{to}--{from} ~)
        ::   (rap 3 %make-cast- p.kas '--' p.cay ~)
        ^-  (bolt gage)
        %+  admit:bo  |.(leaf+"ford: casting {<p.cay>} to {<p.kas>}")
        %+  tug:bo  (find-translation-path cof p.kas p.cay `~)
        |=  {cof/cafe wuy/(list @tas)}
        %+  tug:bo
          ?~  wuy
            (translate-mark cof p.kas p.cay q.cay)
          (run-marks cof i.wuy t.wuy q.cay)
        (with:bo |=(vax/vase [%& p.kas vax]))
      ::
          $core
        %+  admit:bo  |.(leaf+"ford: core {<(tope p.kas)>}")
        ::  code runtime behaviour is frequently affected by marks
        ::  TODO: track this more formally
        %+  add-dep:bo  [%beam [bek /mar] %z]
        (tug:bo (load-core cof p.kas) (with:bo |=(a/vase [%& %core a])))
      ::
          $diff
        %+  admit:bo
          |.(leaf+"ford: diff {<`@p`(mug p.kas)>} {<`@p`(mug q.kas)>}")
        (diff cof p.kas q.kas)
      ::
          $dude  (admit:bo p.kas $(kas q.kas))
          $file
        %+  admit:bo  |.(leaf+"ford: file {<p.kas>}")
        %+  tug:bo  (load-file cof p.kas)
        (with:bo |=(cay/cage [%& cay]))
      ::
          $flag
        =+  rez=$(kas q.kas)
        ?:  ?=($1 -.q.rez)  rez
        =-  rez(p.q -)
        |-  ^-  (set dent)
        ?~  p.kas  p.q.rez
        =.  p.q.rez  $(p.kas l.p.kas)
        =.  p.q.rez  $(p.kas r.p.kas)
        ?^  n.p.kas
          (~(put in p.q.rez) %beam n.p.kas %z)
        =+  dap=(~(get by deh.bay) n.p.kas)
        ?~  dap    ~&(flag-missed+n.p.kas p.q.rez)
        (~(uni in p.q.rez) p.u.dap)
      ::                              XX revisit ^ during dependency review
          $join
        %+  admit:bo
          |.
          leaf+"ford: join {<p.kas>} {<`@p`(mug q.kas)>} {<`@p`(mug r.kas)>}"
        (join cof p.kas q.kas r.kas)
      ::
          $mash
        %+  admit:bo
          |.
          leaf+"ford: mash {<p.kas>} {<`@p`(mug q.kas)>} {<`@p`(mug r.kas)>}"
        (mash cof p.kas q.kas r.kas)
      ::
          $mute  (kale cof p.kas q.kas)
          $pact
        %+  admit:bo
          |.(leaf+"ford: pact {<`@p`(mug p.kas)>} {<`@p`(mug q.kas)>}")
        (pact cof p.kas q.kas)
      ::
          $plan  (to-gage:bo (abut:(meow p.kas q.kas) cof r.kas))
          $reef
        %+  add-dep:bo  [%beam [bek /arvo/hoon] %z]
        %+  add-dep:bo  [%beam [bek /arvo/zuse] %z]
        ::  until /? is in use, any hoon may implicitly depend on arvo types
        (to-gage:bo (new:bo cof pit))
      ::
          $ride
        %+  admit:bo  |.(leaf+"ford: build failed {<hen>}")
        %+  tug:bo  $(kas q.kas)
        %-  tabl-run
        |=  {cof/cafe cay/cage}
        (to-gage:bo (wrapped-slap cof q.cay p.kas))
      ::
          $tabl
        %+  tug:bo
          |-  ^-  (bolt (list (pair gage gage)))
          ?~  p.kas  (new:bo cof ~)
          %.  [cof p.kas]
          ;~  tug:bo
            ;~  cell:bo
              |=({cof/cafe _p.kas} (catch-error:bo ^^$(cof cof, kas p.i)))
              |=({cof/cafe _p.kas} (catch-error:bo ^^$(cof cof, kas q.i)))
              |=({cof/cafe _p.kas} ^$(cof cof, p.kas t))
            ==
            (with:bo |=({k/gage v/gage t/(list {gage gage})} [[k v] t]))
          ==
        (with:bo |=(rex/(list (pair gage gage)) [%tabl rex]))
      ::
          $vale
        %+  admit:bo  |.(leaf+"ford: vale {<p.kas>} {<`@p`(mug q.kas)>}")
        %+  tug:bo  ((lake & p.kas) cof [%noun q.kas])
        (with:bo |=(vax/vase `gage`[%& p.kas vax]))
      ::
          $volt
        %+  admit:bo  |.(leaf+"ford: volt {<p.p.kas>}")
        %+  tug:bo  $(kas [%bunt p.p.kas])
        %-  tabl-run
        |=  {cof/cafe cay/cage}
        ^-  (bolt gage)
        (new:bo cof [%& p.p.kas p.q.cay q.p.kas])
      ==
    ::
    ++  malt                                            ::  cached slit
      ~/  %slit
      |=  {cof/cafe gat/span sam/span}
      ^-  (bolt span)
      %+  (with-cache:bo %slit)  (new:bo cof gat sam)
      |=  {cof/cafe gat/span sam/span}
      %+  admit:bo  |.(%.(%have ~(dunk ut sam)))
      %+  admit:bo  |.(%.(%want ~(dunk ut (~(peek ut gat) %free 6))))
      =+  top=(mule |.((slit gat sam)))
      ?-  -.top
        $|  (err:bo cof p.top)
        $&  (new:bo cof p.top)
      ==
    ::
    ++  maul                                            ::  slam
      ~/  %maul
      |=  {cof/cafe gat/vase sam/vase}
      ^-  (bolt vase)
      %+  tug:bo  (malt cof p.gat p.sam)
      |=  {cof/cafe typ/span}
      %+  (from-toon:bo cof)  (mong [q.gat q.sam] (sloy syve))
      |=(val/* `vase`[typ val])
    ::
    ++  meow                                            ::  assemble
      :: =+  dyv=0
      |=  {how/beam arg/coin}
      =|  $:  rop/(map term (pair hoof twig))           ::  structures
              bil/(map term (pair hoof twig))           ::  libraries
              boy/(list twig)                           ::  body stack
              lit/?                                     ::  drop arguments
          ==
      ~%  %meow  ..meow  ~
      |%
      ++  able                                          ::  assemble preamble
        ^-  twig
        :+  %per
          ?:(=(~ rop) [%$ 1] [%core (~(run by rop) |=({^ a/twig} [%ash a]))])
        ?:(=(~ bil) [%$ 1] [%core (~(run by bil) |=({^ a/twig} [%ash a]))])
      ::
      ++  abut                                          ::  generate
        |=  {cof/cafe hyd/hood}
        ^-  (bolt vase)
        %+  tug:bo  (apex cof hyd)
        |=  {cof/cafe sel/_..abut}
        =.  ..abut  sel
        %+  tug:bo  (to-cage:bo (make cof %reef ~))
        |=  {cof/cafe mark zus/vase}
        %+  tug:bo  (wrapped-slap cof zus able)
        |=  {cof/cafe bax/vase}
        %+  tug:bo  (chap cof bax [%fsdt fan.hyd])
        |=  {cof/cafe mar/mark gox/vase}
        %+  tug:bo  (wrapped-slap cof (slop gox bax) [%tow (flop boy)])
        |=  {cof/cafe fin/vase}
        (new:bo cof fin)
        ::  ~>  %slog.[0 ~(duck ut p.q.cay)]
      ::
      ++  apex                                          ::  build to body
        |=  {cof/cafe hyd/hood}
        ^-  (bolt _..apex)
        %+  tug:bo  (body cof src.hyd)
        ::=.  dyv  +(dyv)
        ::~&  [`term`(cat 3 %apex (fil 4 dyv '  ')) `path`(flop s.how) libs]
        ::=-  ~&  [`term`(cat 3 %xepa (fil 4 dyv '  ')) `path`(flop s.how)]  -
        |=  {cof/cafe sel/_..apex}
        =.  ..apex  sel
        %+  tug:bo  (neck cof lib.hyd)
        |=  {cof/cafe sel/_..apex}
        =.  ..apex  sel(boy boy)
        %+  tug:bo  (head cof sur.hyd)
        |=  {cof/cafe sel/_..apex}
        (new:bo cof sel)
      ::
      ++  body                                          ::  produce functions
        |=  {cof/cafe src/(list hoop)}
        ^-  (bolt _..body)
        ?~  src  (new:bo cof ..body)
        %+  tug:bo  (wilt cof i.src)
        |=  {cof/cafe sel/_..body}
        ^$(src t.src, ..body sel, cof cof)
      ::
      ++  chai                                          ::  atomic map
        |=  {cof/cafe bax/vase hon/horn}
        ^-  (bolt vase)
        %+  tug:bo
          %+  tug:bo  (lads cof how)
          %-  some-in-map:bo
          |=  {cof/cafe dir/knot}
          =+  nod=(chap(s.how [dir s.how]) cof bax hon)
          ?:  ?=($2 -.q.nod)
            (new:bo cof ~)
          (tug:bo nod (with:bo some))
        %-  with:bo
        |=  doy/(map @ cage)  ^-  vase
        ?~  doy  [[%atom %n `0] 0]
        %+  slop
          (slop [[%atom %ta ~] p.n.doy] q.q.n.doy)
        (slop $(doy l.doy) $(doy r.doy))
      ::
      ++  chap                                          ::  produce resources
        |=  {cof/cafe bax/vase hon/horn}
        ^-  (bolt cage)
        ?-    -.hon
            $fssg
          (tug:bo (wrapped-slap cof bax p.hon) (with:bo |=(a/vase [%noun a])))
        ::
            $fsbc
          %+  tug:bo  (wrapped-slap cof bax p.hon)
          |=  {cof/cafe gat/vase}
          %+  tug:bo  (wrapped-slap cof !>(~) ((jock |) arg))
          |=  {cof/cafe val/vase}
          %+  tug:bo  (maul cof gat (slop !>(how) val))
          (with:bo |=(a/vase noun+a))
        ::
            $fsbr
          |-  ^-  (bolt cage)
          ?~  p.hon  (err:bo cof leaf+"ford: out of options" ~)
          %+  catch:bo  (admit:bo %option ^$(cof cof, hon i.p.hon))
          |=  cof/cafe  ^-  (bolt cage)
          ^$(cof cof, p.hon t.p.hon)
        ::
            $fshx
          =+  [dep bot]=(pin:bo $(hon p.hon))    :: XX review
          %+  tug:bo  bot
          %-  with:bo
          |=  {mark vax/vase}
          [%noun (slop [atom+['uvH' ~] dep] vax)]
        ::
            $fsts
          %+  tug:bo  $(hon q.hon)
          %-  with:bo
          |=  {mar/mark vax/vase}
          [mar [%face p.hon p.vax] q.vax]
        ::
            $fsdt
          %+  tug:bo
            %+  tug:bo
              |-  ^-  (bolt (list vase))
              ?~  p.hon  (new:bo cof ~)
              %+  tug:bo  ^$(cof cof, hon i.p.hon)
              |=  {cof/cafe mar/mark vax/vase}
              %+  tug:bo  ^$(cof cof, p.hon t.p.hon)
              (with:bo |=(tev/(list vase) [vax tev]))
            |=  {cof/cafe tev/(list vase)}
            %+  new:bo  cof
            |-  ^-  vase
            ?~  tev  [[%atom %n `~] 0]
            (slop i.tev $(tev t.tev))
          (with:bo |=(a/vase noun+a))
        ::
            $fscm
          =+  opt=|.(>(turn p.hon |=({a/path ^} a))<)
          |-  ^-  (bolt cage)
          ?~  p.hon  (err:bo cof leaf+"ford: no match" >(tope how)< *opt ~)
          ?:  =(p.i.p.hon (scag (lent p.i.p.hon) (flop s.how)))
            ^$(hon q.i.p.hon)
         $(p.hon t.p.hon)
        ::
            $fscn  $(hon p.hon, lit |)
            $fspm
          %+  tug:bo  $(hon q.hon)
          |=  {cof/cafe cay/cage}  ^-  (bolt cage)
          ?~  p.hon  (new:bo cof cay)
          %+  tug:bo  $(p.hon t.p.hon)
          |=  {cof/cafe cay/cage}
          (to-cage:bo (make cof %cast i.p.hon $+cay))
        ::
            $fscb
          %+  tug:bo  (chai cof bax p.hon)
          (with:bo |=(a/vase noun+a))
        ::
            $fssm
          %+  tug:bo  $(hon q.hon)
          |=  {cof/cafe mar/mark sam/vase}
          %+  tug:bo  (wrapped-slap cof bax p.hon)
          |=  {cof/cafe gat/vase}
          %+  tug:bo  (maul cof gat sam)
          (with:bo |=(a/vase noun+a))
        ::
            $fscl
          =+  vez=(vang & (tope how))
          =+  tuz=(posh:vez p.hon)
          ?~  tuz  (err:bo cof leaf+"bad tusk: {<p.hon>}" ~)
          =+  pax=(plex:vez %conl u.tuz)
          ?~  pax  (err:bo cof leaf+"bad path: {<u.tuz>}" ~)
          =+  bem=(tome u.pax)
          ?~  bem  (err:bo cof leaf+"bad beam: {<u.pax>}" ~)
          $(hon q.hon, how u.bem)
        ::
            $fskt
          %+  tug:bo  $(hon q.hon)
          |=  {cof/cafe mar/mark vax/vase}
          %+  tug:bo  (wrapped-slap cof bax [%bunt p.hon])
          |=  {cof/cafe tug/vase}
          ?.  (~(nest ut p.tug) | p.vax)
            (err:bo cof [%leaf "type error: {<p.hon>} {<q.hon>}"]~)
          (new:bo cof [mar p.tug q.vax])
        ::
            $fszp
          %+  admit:bo  |.(leaf+"ford: hook {<q.hon>} {<(tope how)>}")
          %.  [cof how]
          ;~  tug:bo
            compile-to-hood
            abut:(meow how arg)
            (lake | q.hon)
            (with:bo |=(a/vase [q.hon a]))
          ==
        ::
            $fszy
          =.  arg  ?.(lit arg many+~)
          (to-cage:bo (make cof %bake q.hon arg how))
        ==
      ::
      ++  head                                          ::  consume structures
        |=  {cof/cafe bir/(list hoof)}
        ^-  (bolt _..head)
        ?~  bir
          (new:bo cof ..head)
        =+  byf=(~(get by rop) p.i.bir)
        ?^  byf
          ?.  =(`hoof`i.bir `hoof`p.u.byf)
            (err:bo cof [%leaf "structure mismatch: {<~[p.u.byf i.bir]>}"]~)
          $(bir t.bir)
        %+  tug:bo  (fame cof (hone %sur i.bir))
        |=  {cof/cafe bem/beam}
        %+  tug:bo  (compile-to-hood cof bem)
        |=  {cof/cafe hyd/hood}
        %+  tug:bo  (apex(how bem, boy ~) cof hyd)
        |=  {cof/cafe sel/_..head}
        =.  ..head
            %=  sel
              boy  boy
              how  how
              rop  %+  ~(put by (~(uni by rop) rop.sel))
                      p.i.bir
                   [i.bir [%tow (flop boy.sel)]]
            ==
        ^^^$(cof cof, bir t.bir)
      ::
      ++  hone                                          ::  plant hoof
        |=  {way/@tas huf/hoof}
        ^-  beam
        ?~  q.huf
          how(s ~[p.huf way])
        [[q.u.q.huf q.how p.u.q.huf] ~[p.huf way]]
      ::
      ++  neck                                          ::  consume libraries
        |=  {cof/cafe bir/(list hoof)}
        ^-  (bolt _..neck)
        ?~  bir  (new:bo cof ..neck)
        =+  byf=(~(get by bil) p.i.bir)
        ?^  byf
          ?.  =(`hoof`i.bir `hoof`p.u.byf)
            (err:bo cof [%leaf "library mismatch: {<~[p.u.byf i.bir]>}"]~)
          $(bir t.bir)
        %+  tug:bo  (fame cof (hone %lib i.bir))
        |=  {cof/cafe bem/beam}
        %+  tug:bo  (compile-to-hood cof bem)
        |=  {cof/cafe hyd/hood}
        %+  tug:bo  (apex(how bem, boy ~) cof hyd)
        |=  {cof/cafe sel/_..neck}
        =.  ..neck
            %=  sel
              how  how
              bil  %+  ~(put by (~(uni by bil) bil.sel))
                     p.i.bir
                   [i.bir [%tow (flop boy.sel)]]
            ==
        ^^^$(cof cof, bir t.bir)
      ::
      ++  wilt                                          ::  process body entry
        |=  {cof/cafe hop/hoop}
        ^-  (bolt _..wilt)
        ?-    -.hop
            $&  (new:bo cof ..wilt(boy [p.hop boy]))
            $|
          =.  r.p.hop  ?:(?=({$ud $0} r.p.hop) r.how r.p.hop)
          %+  admit:bo  |.(leaf+"ford: wilt {<[(tope p.hop)]>}")
          %+  tug:bo  (load-arch cof p.hop)
          |=  {cof/cafe arc/arch}
          ?:  (~(has by dir.arc) %hoon)
            %+  tug:bo  (compile-to-hood cof p.hop)
            |=  {cof/cafe hyd/hood}
            %+  tug:bo  (apex(boy ~) cof hyd)
            (with:bo |=(sel/_..wilt sel(boy [[%tow boy.sel] boy])))
          =+  [all=(lark (slat %tas) arc) sel=..wilt]
          %+  tug:bo
            |-  ^-  (bolt (pair (map term foot) _..wilt))
            ?~  all  (new:bo cof ~ ..wilt)
            %+  tug:bo  $(all l.all)
            |=  {cof/cafe lef/(map term foot) sel/_..wilt}
            %+  tug:bo  ^$(all r.all, cof cof, sel sel)
            |=  {cof/cafe rig/(map term foot) sel/_..wilt}
            %+  tug:bo
              %=    ^^^^$
                  cof      cof
                  ..wilt   sel(boy ~)
                  s.p.hop  [p.n.all s.p.hop]
              ==
            |=  {cof/cafe sel/_..wilt}
            %+  new:bo  cof
            [`(map term foot)`[[p.n.all [%ash [%tow boy.sel]]] lef rig] sel]
          |=  {cof/cafe mav/(map term foot) sel/_..wilt}
          ?~  mav
            (err:bo cof [%leaf "source missing: {<(tope p.hop)>}"]~)
          (new:bo cof sel(boy [[%core mav] boy]))
        ==
      --
    ::
    ++  pact-hoon                                       ::  .hoon special case
      |=  {a/@t b/(urge cord)}  ^-  @t
      ~|  %lurk-hoon
      (role (lurk (lore a) b))
    ::
    ++  pact                                            ::  patch
      |=  {cof/cafe kas/silk kos/silk}
      ^-  (bolt gage)
      %.  [cof kas kos]
      ;~  tug:bo
        ;~  cell:bo
          |=({cof/cafe p/silk q/silk} (to-cage:bo (make cof p)))
          |=({cof/cafe p/silk q/silk} (to-cage:bo (make cof q)))
        ==
        |=  {cof/cafe cay/cage coy/cage}  ^-  (bolt gage)
        %+  tug:bo  (fang cof p.cay)
        |=  {cof/cafe pro/vase}
        ?.  (slab %grad p.pro)
          (err:bo cof leaf+"no ++grad" ~)
        =+  gar=(slap pro [%limb %grad])
        ?@  q.gar
          =+  for=((sand %tas) q.gar)
          ?~  for  (err:bo cof leaf+"bad mark ++grad" ~)
          (make cof `silk`[%cast p.cay %pact [%cast u.for %$ cay] %$ coy])
        ?.  (slab %form p.gar)
          (err:bo cof leaf+"no ++form:grad" ~)
        =+  for=((soft @tas) q:(slap gar [%limb %form]))
        ?~  for
          (err:bo cof leaf+"bad ++form:grad" ~)
        ?.  =(u.for p.coy)
          %+  err:bo  cof  :_  ~
          =<  leaf+"pact on data with wrong form: {-} {+<} {+>}"
          [(trip p.cay) (trip u.for) (trip p.coy)]
        ?.  (slab %pact p.gar)
          (err:bo cof leaf+"no ++pact:grad" ~)
        %+  tug:bo  (keel cof pro [[%& 6]~ q.cay]~)
        |=  {cof/cafe pox/vase}
        %+  tug:bo
          %^  maul  cof
            (slap (slap pox [%limb %grad]) [%limb %pact])
          q.coy
        (with:bo |=(pat/vase [%& p.cay pat]))
      ==
    ::
    ++  syve
      ^-  sley
      |=  {ref/* sec/(unit (set monk)) tem/term bem/beam}
      ^-  (unit (unit cage))
      ?>  =(%151 -.ref)
      %-  %-  lift  |=  (unit cage)                     :: ignore block
          %+  biff  +<
          |=  cay/cage  ^-  (unit cage)
          ?.  -:(nets:wa +.ref `span`p.q.cay)           :: error if bad type
            ~&  :^  %ford-syve-lost  `path`[tem (tope bem)]
                  want=;;(span +.ref)
                have=p.q.cay
            ~
          `cay
      ^-  (unit (unit cage))
      =+  (~(get by keg) tem bem)
      ?^  -
        (some -)
      (ska +<.$)
    --
  --
::
--
.  ==
=|  axle
=*  lex  -
|=  {now/@da eny/@ ski/sley}                            ::  activate
^?                                                      ::  opaque core
~%  %ford-d  ..is  ~
|%                                                      ::
++  call                                                ::  request
  |=  {hen/duct typ/* kyz/(hobo kiss)}
  ^+  [p=*(list move) q=..^$]
  =/  kis/kiss  ?.(?=($soft -.kyz) kyz ((hard kiss) p.kyz))
  ?:  ?=($wegh -.kis)
    :_  ..^$  :_  ~
    :^  hen  %give  %mass
    :-  %ford
    :-  %|
    %-  |=  a/(list (list mass))  ^-  (list mass)       :: XX single-home
        =+  a2=a
        ?~  a  !!
        ?~  i.a  ~
        :_  $(a (turn a2 tail))
        :-  p.i.i.a
        ?~  -.q.i.i.a
          [%& (turn (turn a2 head) |=(b/mass ?~(-.q.b p.q.b !!)))]
        [%| $(a (turn (turn a2 head) |=(b/mass ?~(-.q.b !! p.q.b))))]
    %+  turn  (~(tap by pol))
    |=  {@ baby}
    :~  =/  caches/(jar term *)
          %-  ~(rep by jav)
          |=({{* a/{term *}} b/(jar term *)} (~(add ja b) -.a +.a))
        =/  cache-for  |=(a/term [a %& (~(get ja caches) a)])
        cache+[%| (turn `(list term)`/hood/bake/slit/slim/slap/slam cache-for)]
    ::
        =/  depends/(jar term *)
          %-  ~(rep by deh)
          |=({{@ a/{* term *}} b/(jar term *)} (~(add ja b) &2.a a))
        =/  dep-for  |=(a/term [a %& (~(get ja depends) a)])
        depends+[%| (turn `(list term)`/init/sent/done dep-for)]
    ::
        tasks+[%& dym tad]
    ==
  =+  our=p.kis
  =+  ^=  bay  ^-  baby
      =+  buy=(~(get by pol.lex) our)
      ?~(buy *baby u.buy)
  =^  mos  bay
    ?-    -.kis
        $wipe  ~&(%ford-cache-wiped [~ bay(jav ~)])
        $wasp
      (~(wasp za [our hen [now eny ski] ~] bay) q.kis)
        $exec
      ?~  q.kis
        ~(exec-cancel za [our hen [now eny ski] ~] bay)
      (~(exec-start za [our hen [now eny ski] ~] bay) u.q.kis)
    ==
  [mos ..^$(pol (~(put by pol) our bay))]
::
++  doze
  |=  {now/@da hen/duct}
  ^-  (unit @da)
  ~
::
++  load                                                ::  highly forgiving
  :: |=(old/axle ..^$(+>- old))
  ::=.  old
  ::    ?.  ?=([%0 *] old)  old                           ::  remove at 1
  ::    :-  %1
  ::    |-  ^-  *
  ::    ?~  +.old  ~
  ::    ?>  ?=([n=[p=* q=[tad=* dym=* deh=* jav=*]] l=* r=*] +.old)
  ::    :-  [p.n.+.old [tad.q.n.+.old dym.q.n.+.old deh.q.n.+.old ~]]
  ::    [$(+.old l.+.old) $(+.old r.+.old)]
  |=  old/*
  =+  lox=((soft axle) old)
  ^+  ..^$
  ?~  lox
   ~&  %ford-reset
   ..^$
  ..^$(+>- u.lox)
::
++  scry
  |=  {fur/(unit (set monk)) ren/@tas who/ship syd/desk lot/coin tyl/path}
  ^-  (unit (unit cage))
  [~ ~]
::
++  stay                                                ::  save w+o cache
  `axle`+>-.$(pol (~(run by pol) |=(a/baby a(jav ~))))
::
++  take                                                ::  response
  |=  {tea/wire hen/duct hin/(hypo sign)}
  ^+  [p=*(list move) q=..^$]
  ?>  ?=({@ @ *} tea)
  =+  our=(slav %p i.tea)
  =+  bay=(~(got by pol.lex) our)
  =^  mos  bay
    =+  dep=(slaw %uv i.t.tea)
    ?^  dep
      =+  bem=(need (tome t.t.tea))
      (~(deps-take za [our hen [now eny ski] ~] bay) tea u.dep bem q.hin)
    ::
    ?>  ?=({@ @ ^} t.t.tea)
    =+  :*  num=(slav %ud i.t.tea)
            van=((hard vane) i.t.t.tea)
            ren=((hard care) i.t.t.t.tea)
            bem=(need (tome t.t.t.t.tea))
        ==
    (~(task-take za [our hen [now eny ski] ~] bay) num [van ren bem] q.hin)
  [mos ..^$(pol (~(put by pol) our bay))]
--
